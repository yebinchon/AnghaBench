
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
struct Tuple {int * items; } ;



__attribute__((used)) static void Tuple_Swap(struct Tuple* t, size_t i, size_t j) {
  var tmp = t->items[i];
  t->items[i] = t->items[j];
  t->items[j] = tmp;
}
