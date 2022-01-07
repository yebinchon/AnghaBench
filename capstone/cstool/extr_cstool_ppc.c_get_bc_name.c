
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* get_bc_name(int bc)
{
 switch(bc) {
  default:
  case 135:
   return ("invalid");
  case 133:
   return ("lt");
  case 134:
   return ("le");
  case 138:
   return ("eq");
  case 137:
   return ("ge");
  case 136:
   return ("gt");
  case 132:
   return ("ne");
  case 128:
   return ("un");
  case 130:
   return ("nu");
  case 129:
   return ("so");
  case 131:
   return ("ns");
 }
}
