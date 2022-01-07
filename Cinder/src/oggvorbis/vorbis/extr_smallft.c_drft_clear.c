
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ splitcache; scalar_t__ trigcache; } ;
typedef TYPE_1__ drft_lookup ;


 int _ogg_free (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

void drft_clear(drft_lookup *l){
  if(l){
    if(l->trigcache)_ogg_free(l->trigcache);
    if(l->splitcache)_ogg_free(l->splitcache);
    memset(l,0,sizeof(*l));
  }
}
