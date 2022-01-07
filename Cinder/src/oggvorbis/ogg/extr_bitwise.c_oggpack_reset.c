
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ endbyte; scalar_t__ endbit; scalar_t__* buffer; scalar_t__* ptr; } ;
typedef TYPE_1__ oggpack_buffer ;



void oggpack_reset(oggpack_buffer *b){
  if(!b->ptr)return;
  b->ptr=b->buffer;
  b->buffer[0]=0;
  b->endbit=b->endbyte=0;
}
