
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Name; } ;
typedef TYPE_1__ HUB_LIST ;


 int StrCmpi (int ,int ) ;

int CompareHubList(void *p1, void *p2)
{
 HUB_LIST *h1, *h2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 h1 = *(HUB_LIST **)p1;
 h2 = *(HUB_LIST **)p2;
 if (h1 == ((void*)0) || h2 == ((void*)0))
 {
  return 0;
 }
 return StrCmpi(h1->Name, h2->Name);
}
