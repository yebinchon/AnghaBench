
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; void* splitcache; void* trigcache; } ;
typedef TYPE_1__ drft_lookup ;


 void* _ogg_calloc (int,int) ;
 int fdrffti (int,void*,void*) ;

void drft_init(drft_lookup *l,int n){
  l->n=n;
  l->trigcache=_ogg_calloc(3*n,sizeof(*l->trigcache));
  l->splitcache=_ogg_calloc(32,sizeof(*l->splitcache));
  fdrffti(n, l->trigcache, l->splitcache);
}
