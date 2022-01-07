
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pos; TYPE_2__* ref; scalar_t__ ptr; scalar_t__ end; TYPE_2__* baseref; } ;
typedef TYPE_3__ oggbyte_buffer ;
struct TYPE_6__ {scalar_t__ begin; TYPE_1__* buffer; scalar_t__ length; } ;
struct TYPE_5__ {scalar_t__ data; } ;



__attribute__((used)) static void _positionB(oggbyte_buffer *b,int pos){
  if(pos<b->pos){

    b->ref=b->baseref;
    b->pos=0;
    b->end=b->pos+b->ref->length;
    b->ptr=b->ref->buffer->data+b->ref->begin;
  }
}
