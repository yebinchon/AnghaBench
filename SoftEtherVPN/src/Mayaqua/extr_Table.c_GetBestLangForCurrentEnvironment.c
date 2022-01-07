
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lang ;
typedef int LIST ;
typedef int LANGLIST ;


 int * GetBestLangByLangStr (int *,char*) ;
 int * GetBestLangByLcid (int *,int ) ;
 scalar_t__ GetEnv (char*,char*,int) ;
 int MAX_SIZE ;
 int MsGetUserLocaleId () ;

LANGLIST *GetBestLangForCurrentEnvironment(LIST *o)
{
 LANGLIST *ret = ((void*)0);

 if (o == ((void*)0))
 {
  return ((void*)0);
 }




 if (1)
 {
  char lang[MAX_SIZE];

  if (GetEnv("LANG", lang, sizeof(lang)))
  {
   ret = GetBestLangByLangStr(o, lang);
  }
  else
  {
   ret = GetBestLangByLangStr(o, "C");
  }
 }


 return ret;
}
