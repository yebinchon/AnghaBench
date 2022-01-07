
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Name; } ;
typedef TYPE_1__ PARAM_VALUE ;


 scalar_t__ IsEmptyStr (int ) ;
 int StrCmpi (int ,int ) ;

int CmpParamValue(void *p1, void *p2)
{
 PARAM_VALUE *v1, *v2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 v1 = *(PARAM_VALUE **)p1;
 v2 = *(PARAM_VALUE **)p2;
 if (v1 == ((void*)0) || v2 == ((void*)0))
 {
  return 0;
 }

 if (IsEmptyStr(v1->Name) && IsEmptyStr(v2->Name))
 {
  return 0;
 }
 return StrCmpi(v1->Name, v2->Name);
}
