
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ storage; } ;
typedef TYPE_1__ ogg_sync_state ;



int ogg_sync_check(ogg_sync_state *oy){
  if(oy->storage<0) return -1;
  return 0;
}
