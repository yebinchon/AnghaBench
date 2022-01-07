
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int storage; } ;
typedef TYPE_1__ ogg_sync_state ;


 int memset (TYPE_1__*,int ,int) ;

int ogg_sync_init(ogg_sync_state *oy){
  if(oy){
    oy->storage = -1;
    memset(oy,0,sizeof(*oy));
  }
  return(0);
}
