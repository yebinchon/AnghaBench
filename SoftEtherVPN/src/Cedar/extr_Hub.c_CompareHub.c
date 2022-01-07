
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Name; } ;
typedef TYPE_1__ HUB ;


 int StrCmpi (int ,int ) ;

int CompareHub(void *p1, void *p2)
{
 HUB *h1, *h2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 h1 = *(HUB **)p1;
 h2 = *(HUB **)p2;
 if (h1 == ((void*)0) || h2 == ((void*)0))
 {
  return 0;
 }
 return StrCmpi(h1->Name, h2->Name);
}
