
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ endbyte; scalar_t__ storage; int* ptr; int endbit; } ;
typedef TYPE_1__ oggpack_buffer ;



long oggpackB_read1(oggpack_buffer *b){
  long ret;

  if(b->endbyte >= b->storage) goto overflow;
  ret=(b->ptr[0]>>(7-b->endbit))&1;

  b->endbit++;
  if(b->endbit>7){
    b->endbit=0;
    b->ptr++;
    b->endbyte++;
  }
  return ret;

 overflow:
  b->ptr=((void*)0);
  b->endbyte=b->storage;
  b->endbit=1;
  return -1L;
}
