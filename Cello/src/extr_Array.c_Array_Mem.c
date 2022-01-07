
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Array* var ;
struct Array {size_t nitems; } ;


 int Array_Item (struct Array*,size_t) ;
 scalar_t__ eq (int ,struct Array*) ;

__attribute__((used)) static bool Array_Mem(var self, var obj) {
  struct Array* a = self;
  for(size_t i = 0; i < a->nitems; i++) {
    if (eq(Array_Item(a, i), obj)) {
      return 1;
    }
  }
  return 0;
}
