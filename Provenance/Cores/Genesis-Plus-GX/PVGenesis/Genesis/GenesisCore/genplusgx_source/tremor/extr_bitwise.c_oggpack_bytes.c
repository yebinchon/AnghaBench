
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {long count; long headptr; int headbit; TYPE_2__* head; } ;
typedef TYPE_3__ oggpack_buffer ;
struct TYPE_6__ {long begin; TYPE_1__* buffer; } ;
struct TYPE_5__ {long data; } ;



long oggpack_bytes(oggpack_buffer *b){
  return(b->count+b->headptr-b->head->buffer->data-b->head->begin+
         (b->headbit+7)/8);
}
