
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Box_Deref (int ) ;
 int print_to (int ,int,char*,int ,int ) ;

__attribute__((used)) static int Box_Show(var self, var output, int pos) {
  return print_to(output, pos, "<'Box' at 0x%p (%$)>", self, Box_Deref(self));
}
