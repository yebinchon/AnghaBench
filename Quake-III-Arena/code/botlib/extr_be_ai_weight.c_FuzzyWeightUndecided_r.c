
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t index; int value; float minweight; float maxweight; float weight; struct TYPE_4__* next; struct TYPE_4__* child; } ;
typedef TYPE_1__ fuzzyseperator_t ;


 float FuzzyWeight_r (int*,TYPE_1__*) ;
 float random () ;

float FuzzyWeightUndecided_r(int *inventory, fuzzyseperator_t *fs)
{
 float scale, w1, w2;

 if (inventory[fs->index] < fs->value)
 {
  if (fs->child) return FuzzyWeightUndecided_r(inventory, fs->child);
  else return fs->minweight + random() * (fs->maxweight - fs->minweight);
 }
 else if (fs->next)
 {
  if (inventory[fs->index] < fs->next->value)
  {

   if (fs->child) w1 = FuzzyWeightUndecided_r(inventory, fs->child);
   else w1 = fs->minweight + random() * (fs->maxweight - fs->minweight);

   if (fs->next->child) w2 = FuzzyWeight_r(inventory, fs->next->child);
   else w2 = fs->next->minweight + random() * (fs->next->maxweight - fs->next->minweight);

   scale = (inventory[fs->index] - fs->value) / (fs->next->value - fs->value);

   return scale * w1 + (1 - scale) * w2;
  }
  return FuzzyWeightUndecided_r(inventory, fs->next);
 }
 return fs->weight;
}
