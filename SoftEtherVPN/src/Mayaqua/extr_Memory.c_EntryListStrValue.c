
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 char* IniStrValue (int *,char*) ;

char *EntryListStrValue(LIST *o, char *key)
{
 return IniStrValue(o, key);
}
