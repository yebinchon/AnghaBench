
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int peer_hash2; } ;


 int MSG_DEBUG ;
 int WPS_HASH_LEN ;
 int os_memcpy (int ,int const*,int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_process_e_hash2(struct wps_data *wps, const u8 *e_hash2)
{
 if (e_hash2 == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No E-Hash2 received");
  return -1;
 }

 os_memcpy(wps->peer_hash2, e_hash2, WPS_HASH_LEN);
 wpa_hexdump(MSG_DEBUG, "WPS: E-Hash2", wps->peer_hash2, WPS_HASH_LEN);

 return 0;
}
