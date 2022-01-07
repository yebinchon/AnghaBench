
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Name; } ;
typedef TYPE_1__ UNIX_VLAN ;


 int StrCmpi (int ,int ) ;

int CiCompareUnixVLan(void *p1, void *p2)
{
 UNIX_VLAN *v1, *v2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 v1 = *(UNIX_VLAN **)p1;
 v2 = *(UNIX_VLAN **)p2;
 if (v1 == ((void*)0) || v2 == ((void*)0))
 {
  return 0;
 }

 return StrCmpi(v1->Name, v2->Name);
}
