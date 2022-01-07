
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Array* var ;
struct Array {size_t nitems; } ;


 void* Array_Item (struct Array*,size_t) ;

__attribute__((used)) static void Array_Mark(var self, var gc, void(*f)(var,void*)) {
  struct Array* a = self;
  for (size_t i = 0; i < a->nitems; i++) {
    f(gc, Array_Item(a, i));
  }
}
