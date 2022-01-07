
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int scan_from (int ,int,char*,int ) ;

int Float_Look(var self, var input, int pos) {
  return scan_from(input, pos, "%f", self);
}
