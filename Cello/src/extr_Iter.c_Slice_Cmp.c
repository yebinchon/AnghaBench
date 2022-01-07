
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Slice* var ;
struct Slice {scalar_t__ iter; int range; } ;


 int Slice ;
 struct Slice* cast (struct Slice*,int ) ;
 int cmp (int ,int ) ;

__attribute__((used)) static int Slice_Cmp(var self, var obj) {
  struct Slice* s = self;
  struct Slice* o = cast(obj, Slice);
  if (s->iter > o->iter) { return 1; }
  if (s->iter < o->iter) { return -1; }
  return cmp(s->range, o->range);
}
