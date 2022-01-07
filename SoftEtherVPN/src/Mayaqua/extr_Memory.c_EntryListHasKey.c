
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 int * GetIniEntry (int *,char*) ;

bool EntryListHasKey(LIST *o, char *key)
{

 if (o == ((void*)0) || key == ((void*)0))
 {
  return 0;
 }

 if (GetIniEntry(o, key) != ((void*)0))
 {
  return 1;
 }

 return 0;
}
