
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bodybytes; scalar_t__ headerbytes; scalar_t__ unsynced; scalar_t__ returned; scalar_t__ fill; } ;
typedef TYPE_1__ ogg_sync_state ;


 scalar_t__ ogg_sync_check (TYPE_1__*) ;

int ogg_sync_reset(ogg_sync_state *oy){
  if(ogg_sync_check(oy))return -1;

  oy->fill=0;
  oy->returned=0;
  oy->unsynced=0;
  oy->headerbytes=0;
  oy->bodybytes=0;
  return(0);
}
