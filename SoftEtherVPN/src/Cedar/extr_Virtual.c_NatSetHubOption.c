
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * HubOption; } ;
typedef TYPE_1__ VH ;
typedef int HUB_OPTION ;



void NatSetHubOption(VH *v, HUB_OPTION *o)
{

 if (v == ((void*)0))
 {
  return;
 }

 v->HubOption = o;
}
