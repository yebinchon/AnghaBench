
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Range* var ;
struct Range {int value; } ;


 int Int ;
 int new (int ) ;
 int range_stack (struct Range*,struct Range*) ;

__attribute__((used)) static void Range_New(var self, var args) {
  struct Range* r = self;
  r->value = new(Int);
  range_stack(self, args);
}
