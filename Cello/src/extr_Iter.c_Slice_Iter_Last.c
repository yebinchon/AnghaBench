
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Slice* var ;
struct Slice {int iter; struct Range* range; } ;
struct Range {scalar_t__ step; scalar_t__ stop; scalar_t__ start; } ;
typedef scalar_t__ int64_t ;


 struct Slice* Terminal ;
 struct Slice* iter_init (int ) ;
 struct Slice* iter_last (int ) ;
 struct Slice* iter_next (int ,struct Slice*) ;
 struct Slice* iter_prev (int ,struct Slice*) ;
 scalar_t__ len (int ) ;

__attribute__((used)) static var Slice_Iter_Last(var self) {
  struct Slice* s = self;
  struct Range* r = s->range;

  if (r->step > 0) {
    var curr = iter_last(s->iter);
    for(int64_t i = 0; i < (int64_t)len(s->iter)-r->stop; i++) {
      curr = iter_prev(s->iter, curr);
    }
    return curr;
  }

  if (r->step < 0) {
    var curr = iter_init(s->iter);
    for(int64_t i = 0; i < r->start; i++) {
      curr = iter_next(s->iter, curr);
    }
    return curr;
  }

  return Terminal;
}
