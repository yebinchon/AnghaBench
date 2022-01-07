
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* StringA; struct TYPE_4__* String; } ;
typedef TYPE_1__ VI_STRING ;
typedef scalar_t__ UINT ;


 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;
 int * string_table ;

void ViFreeStringTables()
{
 UINT i;
 if (string_table == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(string_table);i++)
 {
  VI_STRING *s = LIST_DATA(string_table, i);

  Free(s->String);
  Free(s->StringA);
  Free(s);
 }

 ReleaseList(string_table);
 string_table = ((void*)0);
}
