
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Spi; int ServerToClient; } ;
typedef TYPE_1__ IPSECSA ;


 int COMPARE_RET (int ,int ) ;

int CmpIPsecSa(void *p1, void *p2)
{
 IPSECSA *sa1, *sa2;
 int r;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 sa1 = *(IPSECSA **)p1;
 sa2 = *(IPSECSA **)p2;
 if (sa1 == ((void*)0) || sa2 == ((void*)0))
 {
  return 0;
 }

 r = COMPARE_RET(sa1->ServerToClient, sa2->ServerToClient);
 if (r != 0)
 {
  return r;
 }

 r = COMPARE_RET(sa1->Spi, sa2->Spi);

 return r;
}
