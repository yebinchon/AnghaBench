
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int weightconfig_t ;
struct TYPE_5__ {int numiteminfo; TYPE_1__* iteminfo; } ;
typedef TYPE_2__ itemconfig_t ;
struct TYPE_4__ {int classname; } ;


 int FindFuzzyWeight (int *,int ) ;
 scalar_t__ GetClearedMemory (int) ;
 int Log_Write (char*,int,int ) ;

int *ItemWeightIndex(weightconfig_t *iwc, itemconfig_t *ic)
{
 int *index, i;


 index = (int *) GetClearedMemory(sizeof(int) * ic->numiteminfo);

 for (i = 0; i < ic->numiteminfo; i++)
 {
  index[i] = FindFuzzyWeight(iwc, ic->iteminfo[i].classname);
  if (index[i] < 0)
  {
   Log_Write("item info %d \"%s\" has no fuzzy weight\r\n", i, ic->iteminfo[i].classname);
  }
 }
 return index;
}
