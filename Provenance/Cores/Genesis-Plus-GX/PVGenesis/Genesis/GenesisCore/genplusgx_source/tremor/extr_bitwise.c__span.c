
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int headend; scalar_t__ headbit; TYPE_2__* head; scalar_t__ headptr; int count; } ;
typedef TYPE_3__ oggpack_buffer ;
struct TYPE_7__ {scalar_t__ length; scalar_t__ begin; TYPE_1__* buffer; struct TYPE_7__* next; } ;
struct TYPE_6__ {scalar_t__ data; } ;


 int _adv_halt (TYPE_3__*) ;

__attribute__((used)) static void _span(oggpack_buffer *b){
  while(b->headend<1){
    if(b->head->next){
      b->count+=b->head->length;
      b->head=b->head->next;
      b->headptr=b->head->buffer->data+b->head->begin-b->headend;
      b->headend+=b->head->length;
    }else{


      if(b->headend<0 || b->headbit)

        _adv_halt(b);

      break;
    }
  }
}
