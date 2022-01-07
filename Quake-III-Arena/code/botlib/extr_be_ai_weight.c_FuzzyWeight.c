
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* weights; } ;
typedef TYPE_2__ weightconfig_t ;
struct TYPE_8__ {size_t index; int value; float weight; struct TYPE_8__* next; struct TYPE_8__* child; } ;
typedef TYPE_3__ fuzzyseperator_t ;
struct TYPE_6__ {TYPE_3__* firstseperator; } ;


 float FuzzyWeight_r (int*,TYPE_3__*) ;

float FuzzyWeight(int *inventory, weightconfig_t *wc, int weightnum)
{



 fuzzyseperator_t *s;

 s = wc->weights[weightnum].firstseperator;
 if (!s) return 0;
 while(1)
 {
  if (inventory[s->index] < s->value)
  {
   if (s->child) s = s->child;
   else return s->weight;
  }
  else
  {
   if (s->next) s = s->next;
   else return s->weight;
  }
 }
 return 0;

}
