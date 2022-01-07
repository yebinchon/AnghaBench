
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LANGLIST ;


 int Copy (int *,int *,int) ;
 int current_os_lang ;

void GetCurrentOsLang(LANGLIST *e)
{

 if (e == ((void*)0))
 {
  return;
 }

 Copy(e, &current_os_lang, sizeof(LANGLIST));
}
