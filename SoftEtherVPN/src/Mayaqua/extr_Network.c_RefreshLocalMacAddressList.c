
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeNicList (int *) ;
 int * GetNicList () ;
 int Lock (int ) ;
 int Unlock (int ) ;
 int * local_mac_list ;
 int local_mac_list_lock ;

void RefreshLocalMacAddressList()
{
 Lock(local_mac_list_lock);
 {
  if (local_mac_list != ((void*)0))
  {
   FreeNicList(local_mac_list);
  }

  local_mac_list = GetNicList();
 }
 Unlock(local_mac_list_lock);
}
