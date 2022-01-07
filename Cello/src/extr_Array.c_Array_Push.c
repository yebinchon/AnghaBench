
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Array* var ;
struct Array {scalar_t__ nitems; } ;


 int Array_Alloc (struct Array*,scalar_t__) ;
 int Array_Item (struct Array*,scalar_t__) ;
 int Array_Reserve_More (struct Array*) ;
 int assign (int ,struct Array*) ;

__attribute__((used)) static void Array_Push(var self, var obj) {
  struct Array* a = self;
  a->nitems++;
  Array_Reserve_More(a);
  Array_Alloc(a, a->nitems-1);
  assign(Array_Item(a, a->nitems-1), obj);
}
