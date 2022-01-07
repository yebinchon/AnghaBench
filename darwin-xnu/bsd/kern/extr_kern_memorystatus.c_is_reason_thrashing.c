
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int TRUE ;




__attribute__((used)) static boolean_t
is_reason_thrashing(unsigned cause)
{
 switch (cause) {
 case 130:
 case 128:
 case 129:
  return TRUE;
 default:
  return FALSE;
 }
}
