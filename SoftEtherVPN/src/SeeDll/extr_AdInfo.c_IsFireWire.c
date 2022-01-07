
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 int FIREWIRE_SUBSTR ;
 int TRUE ;
 int * wcsstr (int *,int ) ;

BOOLEAN IsFireWire(TCHAR *AdapterDesc)
{
 if(wcsstr(AdapterDesc, FIREWIRE_SUBSTR) != ((void*)0))
 {
  return TRUE;
 }

 return FALSE;
}
