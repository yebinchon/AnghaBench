
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int SOCK ;
typedef int PACK ;


 int FreePack (int *) ;
 int * NewPack () ;
 int PackAddUniStr (int *,char*,int *) ;
 int SendPack (int *,int *) ;

void CncStatusPrinterWindowPrint(SOCK *s, wchar_t *str)
{
 PACK *p;

 if (s == ((void*)0) || str == ((void*)0))
 {
  return;
 }

 p = NewPack();
 PackAddUniStr(p, "string", str);
 SendPack(s, p);
 FreePack(p);
}
