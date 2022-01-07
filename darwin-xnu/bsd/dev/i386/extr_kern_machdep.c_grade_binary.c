
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_type_t ;
typedef int cpu_subtype_t ;







 int cpu_subtype () ;

int
grade_binary(cpu_type_t exectype, cpu_subtype_t execsubtype)
{
 cpu_subtype_t hostsubtype = cpu_subtype();

 switch(exectype) {
 case 128:
  switch(hostsubtype) {
  case 131:
   switch (execsubtype) {
   case 131:
    return 3;
   case 132:
    return 2;
   }
   break;
  case 130:
   switch (execsubtype) {
   case 132:
    return 2;
   }
   break;
  }
  break;
 case 129:
  return 1;
 }

 return 0;
}
