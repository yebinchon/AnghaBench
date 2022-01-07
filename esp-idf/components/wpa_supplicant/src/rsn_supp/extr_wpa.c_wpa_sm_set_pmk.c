
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_sm {size_t pmk_len; size_t xxkey_len; int key_mgmt; int network_ctx; int own_addr; int pmksa; int xxkey; int pmk; } ;


 int os_memcpy (int ,int const*,size_t) ;
 int pmksa_cache_add (int ,int const*,size_t,int *,int ,int const*,int ,int ,int ) ;

void wpa_sm_set_pmk(struct wpa_sm *sm, const u8 *pmk, size_t pmk_len,
      const u8 *bssid)
{
 if (sm == ((void*)0))
  return;

 sm->pmk_len = pmk_len;
 os_memcpy(sm->pmk, pmk, pmk_len);







 if (bssid) {
  pmksa_cache_add(sm->pmksa, pmk, pmk_len, ((void*)0), 0,
    bssid, sm->own_addr,
    sm->network_ctx, sm->key_mgmt);
 }
}
