
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int* cached_code ;
 int invalidate_blocks (int,int) ;

void SH2DynarecWriteNotify(u32 start, u32 length) {
  int block,wp=0;

  if((start&0xDFF00000)!=0x200000&&(start&0xDE000000)!=0x6000000) return;

  for(block=start>>12;block<=(start+length-1)>>12;block++)
    wp|=((cached_code[block>>3]>>(block&7))&1);
  if(!wp) return;

  invalidate_blocks(start>>12,(start+length-1)>>12);
}
