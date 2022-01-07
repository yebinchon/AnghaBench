
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_config_blob {int dummy; } ;
struct eap_sm {TYPE_1__* blob; } ;
struct TYPE_2__ {char* name; scalar_t__ data; scalar_t__ len; } ;


 scalar_t__ BLOB_NAME_LEN ;
 int BLOB_NUM ;
 int CA_CERT_NAME ;
 int CLIENT_CERT_NAME ;
 int PRIVATE_KEY_NAME ;
 scalar_t__ g_wpa_ca_cert ;
 scalar_t__ g_wpa_ca_cert_len ;
 scalar_t__ g_wpa_client_cert ;
 scalar_t__ g_wpa_client_cert_len ;
 scalar_t__ g_wpa_private_key ;
 scalar_t__ g_wpa_private_key_len ;
 int os_bzero (TYPE_1__*,int) ;
 int os_free (char*) ;
 int os_strncpy (char*,int ,scalar_t__) ;
 scalar_t__ os_zalloc (scalar_t__) ;

int eap_peer_blob_init(struct eap_sm *sm)
{
 int i, ret;

 if (!sm)
  return -1;

 if (g_wpa_client_cert && g_wpa_client_cert_len) {
  sm->blob[0].name = (char *)os_zalloc(BLOB_NAME_LEN+1);
  if (sm->blob[0].name == ((void*)0)) {
   ret = -2;
   goto _out;
  }
  os_strncpy(sm->blob[0].name, CLIENT_CERT_NAME, BLOB_NAME_LEN+1);
  sm->blob[0].len = g_wpa_client_cert_len;
  sm->blob[0].data = g_wpa_client_cert;
 }

 if (g_wpa_private_key && g_wpa_private_key_len) {
  sm->blob[1].name = (char *)os_zalloc(BLOB_NAME_LEN+1);
  if (sm->blob[1].name == ((void*)0)) {
   ret = -2;
   goto _out;
  }
  os_strncpy(sm->blob[1].name, PRIVATE_KEY_NAME, BLOB_NAME_LEN+1);
  sm->blob[1].len = g_wpa_private_key_len;
  sm->blob[1].data = g_wpa_private_key;
 }

 if (g_wpa_ca_cert && g_wpa_ca_cert_len) {
  sm->blob[2].name = (char *)os_zalloc(BLOB_NAME_LEN+1);
  if (sm->blob[2].name == ((void*)0)) {
   ret = -2;
   goto _out;
  }
  os_strncpy(sm->blob[2].name, CA_CERT_NAME, BLOB_NAME_LEN+1);
  sm->blob[2].len = g_wpa_ca_cert_len;
  sm->blob[2].data = g_wpa_ca_cert;
 }

 return 0;
_out:
 for (i = 0; i < BLOB_NUM; i++) {
  if (sm->blob[i].name) {
   os_free(sm->blob[i].name);
   sm->blob[i].name = ((void*)0);
  }
 }
 os_bzero(&sm->blob[0], sizeof(struct wpa_config_blob)*BLOB_NUM);

 return ret;
}
