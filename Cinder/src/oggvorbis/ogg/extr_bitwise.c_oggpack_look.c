
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int endbit; int endbyte; int storage; unsigned long* ptr; } ;
typedef TYPE_1__ oggpack_buffer ;


 unsigned long* mask ;

long oggpack_look(oggpack_buffer *b,int bits){
  unsigned long ret;
  unsigned long m;

  if(bits<0 || bits>32) return -1;
  m=mask[bits];
  bits+=b->endbit;

  if(b->endbyte >= b->storage-4){

    if(b->endbyte > b->storage-((bits+7)>>3)) return -1;


    else if(!bits)return(0L);
  }

  ret=b->ptr[0]>>b->endbit;
  if(bits>8){
    ret|=b->ptr[1]<<(8-b->endbit);
    if(bits>16){
      ret|=b->ptr[2]<<(16-b->endbit);
      if(bits>24){
        ret|=b->ptr[3]<<(24-b->endbit);
        if(bits>32 && b->endbit)
          ret|=b->ptr[4]<<(32-b->endbit);
      }
    }
  }
  return(m&ret);
}
