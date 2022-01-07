
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LIST ;


 int CiFreeIni (int *) ;
 int * CiLoadIni () ;
 char* IniStrValue (int *,char*) ;
 int IsEmptyStr (char*) ;
 int NormalizePath (char*,int ,char*) ;
 int StrCpy (char*,int ,char*) ;

bool CiLoadConfigFilePathFromIni(char *path, UINT size)
{
 char *tmp;
 LIST *o;
 bool ret = 0;


 if (path == ((void*)0))
 {
  return 0;
 }

 o = CiLoadIni();

 if (o == ((void*)0))
 {
  return 0;
 }

 StrCpy(path, size, "");

 tmp = IniStrValue(o, "ConfigPath");
 NormalizePath(path, size, tmp);

 if (IsEmptyStr(path) == 0)
 {
  ret = 1;
 }
 else
 {
  ret = 0;
 }

 CiFreeIni(o);

 return ret;
}
