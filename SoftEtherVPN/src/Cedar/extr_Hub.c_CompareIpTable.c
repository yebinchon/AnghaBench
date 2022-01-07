
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Ip; } ;
typedef TYPE_1__ IP_TABLE_ENTRY ;


 int CmpIpAddr (int *,int *) ;

int CompareIpTable(void *p1, void *p2)
{
 IP_TABLE_ENTRY *e1, *e2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 e1 = *(IP_TABLE_ENTRY **)p1;
 e2 = *(IP_TABLE_ENTRY **)p2;
 if (e1 == ((void*)0) || e2 == ((void*)0))
 {
  return 0;
 }
 return CmpIpAddr(&e1->Ip, &e2->Ip);
}
