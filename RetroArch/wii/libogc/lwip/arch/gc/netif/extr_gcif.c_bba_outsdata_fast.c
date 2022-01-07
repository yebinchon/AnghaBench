
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
typedef int u32 ;
typedef int s32 ;


 int DCStoreRange (void*,int) ;
 int bba_outsdata (void*,int) ;
 int bba_outsdmadata (void*,int,int *) ;
 int bba_sync () ;

__attribute__((used)) static void bba_outsdata_fast(void *val,s32 len)
{
 u32 roundlen;
 s32 missalign;
 u8 *ptr = val;

 if(!val || len<=0) return;

 missalign = -((u32)val)&0x1f;
 if((s32)(len-missalign)<32) {
  bba_outsdata(val,len);
  return;
 }

 if(missalign>0) {
  bba_outsdata(ptr,missalign);
  len -= missalign;
  ptr += missalign;
 }

 roundlen = (len&~0x1f);
 DCStoreRange(ptr,roundlen);
 bba_outsdmadata(ptr,roundlen,((void*)0));
 bba_sync();

 len -= roundlen;
 ptr += roundlen;
 if(len>0) bba_outsdata(ptr,len);
}
