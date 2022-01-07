
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long endbit; long endbyte; int * ptr; int * buffer; } ;
typedef TYPE_1__ oggpack_buffer ;


 int * mask8B ;

void oggpackB_writetrunc(oggpack_buffer *b,long bits){
  long bytes=bits>>3;
  if(b->ptr){
    bits-=bytes*8;
    b->ptr=b->buffer+bytes;
    b->endbit=bits;
    b->endbyte=bytes;
    *b->ptr&=mask8B[bits];
  }
}
