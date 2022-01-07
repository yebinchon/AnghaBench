
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Range* var ;
struct Range {int step; int stop; int start; int value; } ;


 int Range ;
 int assign (int ,int ) ;
 struct Range* cast (struct Range*,int ) ;

__attribute__((used)) static void Range_Assign(var self, var obj) {
  struct Range* r = self;
  struct Range* o = cast(obj, Range);
  assign(r->value, o->value);
  r->start = o->start;
  r->stop = o->stop;
  r->step = o->step;
}
