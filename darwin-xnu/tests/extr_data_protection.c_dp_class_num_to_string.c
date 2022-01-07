
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char*
dp_class_num_to_string(int num) {
 switch(num) {
  case 0:
   return "unclassed";
  case 133:
   return "class A";
  case 132:
   return "class B";
  case 131:
   return "class C";
  case 130:
   return "class D";
  case 129:
   return "class E";
  case 128:
   return "class F";
  default:
   return "<unknown class>";
 }
}
