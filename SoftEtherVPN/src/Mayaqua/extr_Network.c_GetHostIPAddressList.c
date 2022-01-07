
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;
typedef int LIST ;


 int * CloneIPAddressList (int *) ;
 int FreeHostIPAddressList (int *) ;
 int * GetHostIPAddressListInternal () ;
 scalar_t__ HOST_IP_ADDRESS_LIST_CACHE ;
 int Lock (int *) ;
 scalar_t__ Tick64 () ;
 int Unlock (int *) ;
 int * host_ip_address_cache ;
 scalar_t__ host_ip_address_list_cache_last ;
 int * host_ip_address_list_cache_lock ;

LIST *GetHostIPAddressList()
{
 LIST *o = ((void*)0);
 if (host_ip_address_list_cache_lock == ((void*)0))
 {
  return GetHostIPAddressListInternal();
 }

 Lock(host_ip_address_list_cache_lock);
 {
  UINT64 now = Tick64();

  if (host_ip_address_list_cache_last == 0 ||
   ((host_ip_address_list_cache_last + (UINT64)HOST_IP_ADDRESS_LIST_CACHE) < now) ||
   host_ip_address_cache == ((void*)0))
  {
   if (host_ip_address_cache != ((void*)0))
   {
    FreeHostIPAddressList(host_ip_address_cache);
   }

   host_ip_address_cache = GetHostIPAddressListInternal();

   host_ip_address_list_cache_last = now;
  }

  o = CloneIPAddressList(host_ip_address_cache);
 }
 Unlock(host_ip_address_list_cache_lock);

 if (o == ((void*)0))
 {
  o = GetHostIPAddressListInternal();
 }

 return o;
}
