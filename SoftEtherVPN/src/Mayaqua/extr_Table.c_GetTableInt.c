
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 char* GetTableStr (char*) ;
 int ToInt (char*) ;

UINT GetTableInt(char *name)
{
 char *str;

 if (name == ((void*)0))
 {
  return 0;
 }

 str = GetTableStr(name);
 return ToInt(str);
}
