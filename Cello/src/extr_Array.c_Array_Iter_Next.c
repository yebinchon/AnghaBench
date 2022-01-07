
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ var ;
struct Array {scalar_t__ nitems; } ;


 scalar_t__ Array_Item (struct Array*,scalar_t__) ;
 int Array_Step (struct Array*) ;
 scalar_t__ Terminal ;

__attribute__((used)) static var Array_Iter_Next(var self, var curr) {
  struct Array* a = self;
  if (curr >= Array_Item(a, a->nitems-1)) {
    return Terminal;
  } else {
    return (char*)curr + Array_Step(a);
  }
}
