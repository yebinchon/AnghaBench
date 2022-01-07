
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Slice* var ;
struct Slice {int range; } ;


 int Range ;
 int new (int ) ;
 int slice_stack (struct Slice*,struct Slice*) ;

__attribute__((used)) static void Slice_New(var self, var args) {
  struct Slice* s = self;
  s->range = new(Range);
  slice_stack(self, args);
}
