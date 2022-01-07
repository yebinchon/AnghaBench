
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 int FreeIni (int *) ;

void FreeEntryList(LIST *o)
{

 if (o == ((void*)0))
 {
  return;
 }

 FreeIni(o);
}
