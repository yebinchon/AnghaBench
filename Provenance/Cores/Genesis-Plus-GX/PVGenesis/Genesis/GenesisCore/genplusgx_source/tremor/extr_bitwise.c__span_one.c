
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int headend; int count; TYPE_2__* head; scalar_t__ headptr; } ;
typedef TYPE_3__ oggpack_buffer ;
struct TYPE_6__ {int length; scalar_t__ begin; TYPE_1__* buffer; struct TYPE_6__* next; } ;
struct TYPE_5__ {scalar_t__ data; } ;



__attribute__((used)) static void _span_one(oggpack_buffer *b){
  while(b->headend<1){
    if(b->head->next){
      b->count+=b->head->length;
      b->head=b->head->next;
      b->headptr=b->head->buffer->data+b->head->begin;
      b->headend=b->head->length;
    }else
      break;
  }
}
