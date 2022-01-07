
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Slice* var ;
struct Slice {int range; int iter; } ;


 int Slice ;
 int assign (int ,int ) ;
 struct Slice* cast (struct Slice*,int ) ;

__attribute__((used)) static void Slice_Assign(var self, var obj) {
  struct Slice* s = self;
  struct Slice* o = cast(obj, Slice);
  s->iter = o->iter;
  assign(s->range, o->range);
}
