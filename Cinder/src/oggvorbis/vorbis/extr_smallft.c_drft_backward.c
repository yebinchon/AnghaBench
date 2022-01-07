
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int splitcache; scalar_t__ trigcache; } ;
typedef TYPE_1__ drft_lookup ;


 int drftb1 (int,float*,scalar_t__,scalar_t__,int ) ;

void drft_backward(drft_lookup *l,float *data){
  if (l->n==1)return;
  drftb1(l->n,data,l->trigcache,l->trigcache+l->n,l->splitcache);
}
