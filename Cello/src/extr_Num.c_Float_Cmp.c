
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 double Float_C_Float (int ) ;
 double c_float (int ) ;

__attribute__((used)) static int Float_Cmp(var self, var obj) {
  double c = Float_C_Float(self) - c_float(obj);
  return c > 0 ? 1 : c < 0 ? -1 : 0;
}
