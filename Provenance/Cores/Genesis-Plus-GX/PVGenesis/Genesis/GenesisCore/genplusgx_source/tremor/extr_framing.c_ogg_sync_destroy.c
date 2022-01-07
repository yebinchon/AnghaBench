
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bufferpool; } ;
typedef TYPE_1__ ogg_sync_state ;


 int OGG_SUCCESS ;
 int _ogg_free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int ogg_buffer_destroy (int ) ;
 int ogg_sync_reset (TYPE_1__*) ;

int ogg_sync_destroy(ogg_sync_state *oy){
  if(oy){
    ogg_sync_reset(oy);
    ogg_buffer_destroy(oy->bufferpool);
    memset(oy,0,sizeof(*oy));
    _ogg_free(oy);
  }
  return OGG_SUCCESS;
}
