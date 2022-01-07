
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int wpa; int wpa_key_mgmt; } ;
struct wpa_authenticator {int wpa_ie_len; int * wpa_ie; TYPE_1__ conf; } ;
typedef int buf ;


 int WPA_PROTO_RSN ;
 int WPA_PROTO_WPA ;
 int memcpy (int *,int *,int) ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 scalar_t__ wpa_key_mgmt_ft (int ) ;
 int wpa_write_mdie (TYPE_1__*,int *,int) ;
 int wpa_write_rsn_ie (TYPE_1__*,int *,int,int *) ;
 int wpa_write_wpa_ie (TYPE_1__*,int *,int) ;

int wpa_auth_gen_wpa_ie(struct wpa_authenticator *wpa_auth)
{
 u8 *pos, buf[128];
 int res;

 pos = buf;

 if (wpa_auth->conf.wpa & WPA_PROTO_RSN) {
  res = wpa_write_rsn_ie(&wpa_auth->conf,
           pos, buf + sizeof(buf) - pos, ((void*)0));
  if (res < 0)
   return res;
  pos += res;
 }
 if (wpa_auth->conf.wpa & WPA_PROTO_WPA) {
  res = wpa_write_wpa_ie(&wpa_auth->conf,
           pos, buf + sizeof(buf) - pos);
  if (res < 0)
   return res;
  pos += res;
 }

 os_free(wpa_auth->wpa_ie);
 wpa_auth->wpa_ie = os_malloc(pos - buf);
 if (wpa_auth->wpa_ie == ((void*)0))
  return -1;
 memcpy(wpa_auth->wpa_ie, buf, pos - buf);
 wpa_auth->wpa_ie_len = pos - buf;

 return 0;
}
