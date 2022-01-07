
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Filter* var ;
struct Filter {int iter; } ;


 struct Filter* iter_type (int ) ;

__attribute__((used)) static var Filter_Iter_Type(var self) {
  struct Filter* f = self;
  return iter_type(f->iter);
}
