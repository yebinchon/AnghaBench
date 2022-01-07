
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Slice* var ;
struct Slice {int iter; } ;


 struct Slice* iter_type (int ) ;

__attribute__((used)) static var Slice_Iter_Type(var self) {
  struct Slice* s = self;
  return iter_type(s->iter);
}
