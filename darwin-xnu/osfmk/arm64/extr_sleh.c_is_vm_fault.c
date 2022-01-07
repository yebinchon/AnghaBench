
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fault_status_t ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static int
is_vm_fault(fault_status_t status)
{
 switch (status) {
 case 131:
 case 130:
 case 129:
 case 128:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
  return TRUE;
 default:
  return FALSE;
 }
}
