
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bodybytes; scalar_t__ headerbytes; scalar_t__ unsynced; scalar_t__ fifo_fill; scalar_t__ fifo_head; scalar_t__ fifo_tail; } ;
typedef TYPE_1__ ogg_sync_state ;


 int OGG_SUCCESS ;
 int ogg_buffer_release (scalar_t__) ;

int ogg_sync_reset(ogg_sync_state *oy){

  ogg_buffer_release(oy->fifo_tail);
  oy->fifo_tail=0;
  oy->fifo_head=0;
  oy->fifo_fill=0;

  oy->unsynced=0;
  oy->headerbytes=0;
  oy->bodybytes=0;
  return OGG_SUCCESS;
}
