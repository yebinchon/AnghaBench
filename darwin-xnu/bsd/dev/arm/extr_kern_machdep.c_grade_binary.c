
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_type_t ;
typedef int cpu_subtype_t ;


 int CPU_ARCH_ABI64 ;
 int bootarg_no64exec ;
 int cpu_subtype () ;
 int cpu_subtype32 () ;

int
grade_binary(cpu_type_t exectype, cpu_subtype_t execsubtype)
{




 cpu_subtype_t hostsubtype = cpu_subtype();


 switch (exectype) {
 case 129:
  switch (hostsubtype) {



  case 131:
   switch (execsubtype) {
   case 131:
    return 7;
   }
   goto v7s;





v7s:
  case 132:
   switch (execsubtype) {
   case 132:
    return 6;
   }
   goto v7;




  case 133:
   switch (execsubtype) {
   case 133:
    return 6;
   }
   break;





  case 134:
   switch (execsubtype) {
   case 134:
    return 6;
   }
   goto v7;

v7:
  case 135:
   switch (execsubtype) {
   case 135:
    return 5;
   }


  case 136:
   switch (execsubtype) {
   case 136:
    return 4;
   }


  case 137:
   switch (execsubtype) {
   case 137:
    return 3;
   }


  case 138:
   switch (execsubtype) {
   case 138:
    return 2;
   case 139:
    return 1;
   }
   break;

  case 130:
   switch (execsubtype) {
   case 130:
    return 4;
   case 137:
    return 3;
   case 138:
    return 2;
   case 139:
    return 1;
   }
   break;
  }

 }

 return 0;
}
