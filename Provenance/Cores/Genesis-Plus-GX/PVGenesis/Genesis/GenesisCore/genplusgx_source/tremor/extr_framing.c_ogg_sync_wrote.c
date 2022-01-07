
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {long fifo_fill; TYPE_2__* fifo_head; } ;
typedef TYPE_3__ ogg_sync_state ;
struct TYPE_6__ {long length; long begin; TYPE_1__* buffer; } ;
struct TYPE_5__ {long size; } ;


 int OGG_EINVAL ;
 int OGG_SUCCESS ;

int ogg_sync_wrote(ogg_sync_state *oy, long bytes){
  if(!oy->fifo_head)return OGG_EINVAL;
  if(oy->fifo_head->buffer->size-oy->fifo_head->length-oy->fifo_head->begin <
     bytes)return OGG_EINVAL;
  oy->fifo_head->length+=bytes;
  oy->fifo_fill+=bytes;
  return OGG_SUCCESS;
}
