
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IsMacAddressLocalInner (int *,void*) ;
 int Lock (int ) ;
 int RefreshLocalMacAddressList () ;
 int Unlock (int ) ;
 int * local_mac_list ;
 int local_mac_list_lock ;

bool IsMacAddressLocalFast(void *addr)
{
 bool ret = 0;

 if (addr == ((void*)0))
 {
  return 0;
 }

 Lock(local_mac_list_lock);
 {
  if (local_mac_list == ((void*)0))
  {

   RefreshLocalMacAddressList();
  }

  ret = IsMacAddressLocalInner(local_mac_list, addr);
 }
 Unlock(local_mac_list_lock);

 return ret;
}
