
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Zip* var ;
struct Zip {struct Tuple* values; int iters; } ;
struct Tuple {int * items; } ;


 int Terminal ;
 int _ ;
 size_t len (int ) ;

var zip_stack(var self) {
  struct Zip* z = self;
  size_t nargs = len(z->iters);
  struct Tuple* t = z->values;
  for (size_t i = 0; i < nargs; i++) {
    t->items[i] = _;
  }
  t->items[nargs] = Terminal;
  return z;
}
