
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 int ClearStr (char*,scalar_t__) ;
 int Lock (int ) ;
 int StrCpy (char*,scalar_t__,int ) ;
 int Trim (char*) ;
 int Unlock (int ) ;
 int current_fqdn ;
 int current_fqdn_lock ;

void GetCurrentDDnsFqdn(char *name, UINT size)
{
 ClearStr(name, size);

 if (name == ((void*)0) || size == 0)
 {
  return;
 }

 Lock(current_fqdn_lock);
 {
  StrCpy(name, size, current_fqdn);
 }
 Unlock(current_fqdn_lock);

 Trim(name);
}
