
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ TABLE ;


 int StrCmpi (int ,int ) ;

int CmpTableName(void *p1, void *p2)
{
 TABLE *t1, *t2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 t1 = *(TABLE **)p1;
 t2 = *(TABLE **)p2;
 if (t1 == ((void*)0) || t2 == ((void*)0))
 {
  return 0;
 }

 return StrCmpi(t1->name, t2->name);
}
