
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t index; int value; float weight; struct TYPE_3__* next; struct TYPE_3__* child; } ;
typedef TYPE_1__ fuzzyseperator_t ;



float FuzzyWeight_r(int *inventory, fuzzyseperator_t *fs)
{
 float scale, w1, w2;

 if (inventory[fs->index] < fs->value)
 {
  if (fs->child) return FuzzyWeight_r(inventory, fs->child);
  else return fs->weight;
 }
 else if (fs->next)
 {
  if (inventory[fs->index] < fs->next->value)
  {

   if (fs->child) w1 = FuzzyWeight_r(inventory, fs->child);
   else w1 = fs->weight;

   if (fs->next->child) w2 = FuzzyWeight_r(inventory, fs->next->child);
   else w2 = fs->next->weight;

   scale = (inventory[fs->index] - fs->value) / (fs->next->value - fs->value);

   return scale * w1 + (1 - scale) * w2;
  }
  return FuzzyWeight_r(inventory, fs->next);
 }
 return fs->weight;
}
