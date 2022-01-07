
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Slice* var ;
struct Slice {int iter; struct Range* range; } ;
struct Range {scalar_t__ step; } ;
typedef scalar_t__ int64_t ;


 struct Slice* iter_next (int ,struct Slice*) ;
 struct Slice* iter_prev (int ,struct Slice*) ;

__attribute__((used)) static var Slice_Iter_Next(var self, var curr) {
  struct Slice* s = self;
  struct Range* r = s->range;

  if (r->step > 0) {
    for (int64_t i = 0; i < r->step; i++) {
      curr = iter_next(s->iter, curr);
    }
  }

  if (r->step < 0) {
    for (int64_t i = 0; i < -r->step; i++) {
      curr = iter_prev(s->iter, curr);
    }
  }

  return curr;
}
