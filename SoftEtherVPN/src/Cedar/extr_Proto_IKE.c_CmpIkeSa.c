
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ResponderCookie; } ;
typedef TYPE_1__ IKE_SA ;


 int COMPARE_RET (int ,int ) ;

int CmpIkeSa(void *p1, void *p2)
{
 IKE_SA *sa1, *sa2;
 int r;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 sa1 = *(IKE_SA **)p1;
 sa2 = *(IKE_SA **)p2;
 if (sa1 == ((void*)0) || sa2 == ((void*)0))
 {
  return 0;
 }

 r = COMPARE_RET(sa1->ResponderCookie, sa2->ResponderCookie);

 return r;
}
