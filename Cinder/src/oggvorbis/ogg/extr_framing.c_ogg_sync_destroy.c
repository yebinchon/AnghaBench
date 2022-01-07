
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ogg_sync_state ;


 int _ogg_free (int *) ;
 int ogg_sync_clear (int *) ;

int ogg_sync_destroy(ogg_sync_state *oy){
  if(oy){
    ogg_sync_clear(oy);
    _ogg_free(oy);
  }
  return(0);
}
