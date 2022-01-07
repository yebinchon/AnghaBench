
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ var ;
struct Array {int dummy; } ;


 scalar_t__ Array_Item (struct Array*,int ) ;
 int Array_Step (struct Array*) ;
 scalar_t__ Terminal ;

__attribute__((used)) static var Array_Iter_Prev(var self, var curr) {
  struct Array* a = self;
  if (curr < Array_Item(a, 0)) {
    return Terminal;
  } else {
    return (char*)curr - Array_Step(a);
  }
}
