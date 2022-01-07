
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int StrCpy (char*,int ,char*) ;
 char* getenv (char*) ;

bool GetEnv(char *name, char *data, UINT size)
{
 char *ret;

 if (name == ((void*)0) || data == ((void*)0))
 {
  return 0;
 }

 StrCpy(data, size, "");

 ret = getenv(name);
 if (ret == ((void*)0))
 {
  return 0;
 }

 StrCpy(data, size, ret);

 return 1;
}
