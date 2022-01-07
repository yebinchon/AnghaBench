
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int Id; int StringA; int * String; } ;
typedef TYPE_1__ VI_STRING ;
typedef int UINT ;
typedef int HINSTANCE ;


 int CopyUniToStr (int *) ;
 int GetModuleHandle (int *) ;
 int Insert (int ,TYPE_1__*) ;
 int NewList (int ) ;
 int ViCompareString ;
 int * ViLoadString (int ,int) ;
 TYPE_1__* ZeroMalloc (int) ;
 int string_table ;

void ViLoadStringTables()
{
 UINT i, n;
 HINSTANCE hInst = GetModuleHandle(((void*)0));

 string_table = NewList(ViCompareString);

 n = 0;
 for (i = 1;;i++)
 {
  wchar_t *str = ViLoadString(hInst, i);
  if (str != ((void*)0))
  {
   VI_STRING *s;
   n = 0;

   s = ZeroMalloc(sizeof(VI_STRING));
   s->Id = i;
   s->String = str;
   s->StringA = CopyUniToStr(str);

   Insert(string_table, s);
  }
  else
  {
   n++;
   if (n >= 1500)
   {
    break;
   }
  }
 }
}
