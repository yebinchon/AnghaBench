
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * CopyStrToUni (char*) ;
 int Free (int *) ;
 int UniPrintStr (int *) ;
 int fputs (char*,int ) ;
 int stdout ;

void PrintStr(char *str)
{
 wchar_t *unistr = ((void*)0);

 if (str == ((void*)0))
 {
  return;
 }




 unistr = CopyStrToUni(str);
 UniPrintStr(unistr);
 Free(unistr);

}
