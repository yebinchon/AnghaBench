
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LIST ;


 int IniIntValue (int *,char*) ;

UINT EntryListIntValue(LIST *o, char *key)
{
 return IniIntValue(o, key);
}
