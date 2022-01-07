
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numweights; TYPE_1__* weights; } ;
typedef TYPE_2__ weightconfig_t ;
struct TYPE_4__ {int name; } ;


 int strcmp (int ,char*) ;

int FindFuzzyWeight(weightconfig_t *wc, char *name)
{
 int i;

 for (i = 0; i < wc->numweights; i++)
 {
  if (!strcmp(wc->weights[i].name, name))
  {
   return i;
  }
 }
 return -1;
}
