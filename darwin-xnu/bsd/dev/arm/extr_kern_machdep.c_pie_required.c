
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_type_t ;
typedef int cpu_subtype_t ;
typedef int boolean_t ;





 int FALSE ;
 int TRUE ;

boolean_t
pie_required(cpu_type_t exectype, cpu_subtype_t execsubtype)
{
 switch (exectype) {





 case 129:
  switch (execsubtype) {
   case 130:
    return TRUE;
   }
  break;
 }
 return FALSE;
}
