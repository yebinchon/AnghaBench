
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
typedef int u32 ;
typedef int s32 ;


 int DCInvalidateRange (void*,int) ;
 int bba_insdata (void*,int) ;
 int bba_insdmadata (void*,int,int *) ;
 int bba_sync () ;

__attribute__((used)) static void bba_insdata_fast(void *val,s32 len)
{
 u32 roundlen;
 s32 missalign;
 u8 *ptr = val;

 if(!val || len<=0) return;

 missalign = -((u32)val)&0x1f;
 if((s32)(len-missalign)<32) {
  bba_insdata(val,len);
  return;
 }

 if(missalign>0) {
  bba_insdata(ptr,missalign);
  len -= missalign;
  ptr += missalign;
 }

 roundlen = (len&~0x1f);
 DCInvalidateRange(ptr,roundlen);
 bba_insdmadata(ptr,roundlen,((void*)0));
 bba_sync();

 len -= roundlen;
 ptr += roundlen;
 if(len>0) bba_insdata(ptr,len);
}
