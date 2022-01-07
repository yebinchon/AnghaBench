
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Name; } ;
typedef TYPE_1__ HTTP_VALUE ;


 int StrCmpi (int ,int ) ;

int CompareHttpValue(void *p1, void *p2)
{
 HTTP_VALUE *v1, *v2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 v1 = *(HTTP_VALUE **)p1;
 v2 = *(HTTP_VALUE **)p2;
 if (v1 == ((void*)0) || v2 == ((void*)0))
 {
  return 0;
 }
 return StrCmpi(v1->Name, v2->Name);
}
