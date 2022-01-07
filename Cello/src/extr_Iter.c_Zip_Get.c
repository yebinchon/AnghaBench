
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Zip* var ;
struct Zip {int * items; struct Zip* iters; struct Zip* values; } ;
struct Tuple {int * items; struct Tuple* iters; struct Tuple* values; } ;


 int get (int ,struct Zip*) ;
 size_t len (struct Zip*) ;

__attribute__((used)) static var Zip_Get(var self, var key) {
  struct Zip* z = self;
  struct Tuple* values = z->values;
  struct Tuple* iters = z->iters;
  size_t num = len(iters);

  for (size_t i = 0; i < num; i++) {
    values->items[i] = get(iters->items[i], key);
  }

  return values;
}
