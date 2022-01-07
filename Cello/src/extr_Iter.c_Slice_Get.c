
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Slice* var ;
struct Slice {int range; int iter; } ;


 int Range_Get (int ,struct Slice*) ;
 struct Slice* get (int ,int ) ;

__attribute__((used)) static var Slice_Get(var self, var key) {
  struct Slice* s = self;
  return get(s->iter, Range_Get(s->range, key));
}
