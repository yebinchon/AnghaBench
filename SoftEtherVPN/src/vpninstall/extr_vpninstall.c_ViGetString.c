
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
struct TYPE_5__ {int * String; int Id; } ;
typedef TYPE_1__ VI_STRING ;
typedef int UINT ;


 int LockList (int ) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int UnlockList (int ) ;
 int Zero (TYPE_1__*,int) ;
 int string_table ;

wchar_t *ViGetString(UINT id)
{
 VI_STRING t, *s;
 wchar_t *ret = ((void*)0);

 Zero(&t, sizeof(t));
 t.Id = id;

 LockList(string_table);
 {
  s = Search(string_table, &t);

  if (s != ((void*)0))
  {
   ret = s->String;
  }
 }
 UnlockList(string_table);

 return ret;
}
