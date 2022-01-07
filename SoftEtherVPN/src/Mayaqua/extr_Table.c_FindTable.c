
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ TABLE ;


 int CopyStr (char*) ;
 int Free (int ) ;
 TYPE_1__* Search (int *,TYPE_1__*) ;
 int * TableList ;

TABLE *FindTable(char *name)
{
 TABLE *t, tt;

 if (name == ((void*)0) || TableList == ((void*)0))
 {
  return ((void*)0);
 }

 tt.name = CopyStr(name);
 t = Search(TableList, &tt);
 Free(tt.name);

 return t;
}
