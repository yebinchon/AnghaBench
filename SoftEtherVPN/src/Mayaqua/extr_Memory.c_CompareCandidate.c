
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ LastSelectedTime; int Str; } ;
typedef TYPE_1__ CANDIDATE ;


 int UniStrCmpi (int ,int ) ;

int CompareCandidate(void *p1, void *p2)
{
 CANDIDATE *c1, *c2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 c1 = *(CANDIDATE **)p1;
 c2 = *(CANDIDATE **)p2;
 if (c1 == ((void*)0) || c2 == ((void*)0))
 {
  return 0;
 }
 if (c1->LastSelectedTime > c2->LastSelectedTime)
 {
  return -1;
 }
 else if (c1->LastSelectedTime < c2->LastSelectedTime)
 {
  return 1;
 }
 else
 {
  return UniStrCmpi(c1->Str, c2->Str);
 }
}
