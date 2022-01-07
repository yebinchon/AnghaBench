
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bufferpool; } ;
typedef TYPE_1__ ogg_sync_state ;


 TYPE_1__* _ogg_calloc (int,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int ogg_buffer_create () ;

ogg_sync_state *ogg_sync_create(void){
  ogg_sync_state *oy=_ogg_calloc(1,sizeof(*oy));
  memset(oy,0,sizeof(*oy));
  oy->bufferpool=ogg_buffer_create();
  return oy;
}
