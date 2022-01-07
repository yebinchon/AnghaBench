
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int print_to (int ,int,char*,int ) ;

int Float_Show(var self, var output, int pos) {
  return print_to(output, pos, "%f", self);
}
