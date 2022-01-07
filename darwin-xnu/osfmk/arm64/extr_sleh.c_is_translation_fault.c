
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fault_status_t ;


 int FALSE ;




 int TRUE ;

__attribute__((used)) static int
is_translation_fault(fault_status_t status)
{
 switch (status) {
 case 131:
 case 130:
 case 129:
 case 128:
  return TRUE;
 default:
  return FALSE;
 }
}
