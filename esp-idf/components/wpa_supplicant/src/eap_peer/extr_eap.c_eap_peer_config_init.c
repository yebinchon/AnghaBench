
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int fragment_size; scalar_t__ anonymous_identity_len; scalar_t__ identity_len; scalar_t__ password_len; scalar_t__ new_password_len; int * new_password; int * password; int * identity; int * anonymous_identity; int * ca_path; int * ca_cert; int * private_key; int * client_cert; int const* private_key_passwd; } ;
struct eap_sm {TYPE_2__ config; TYPE_1__* blob; } ;
struct TYPE_3__ {scalar_t__ name; } ;


 scalar_t__ g_wpa_anonymous_identity ;
 scalar_t__ g_wpa_anonymous_identity_len ;
 scalar_t__ g_wpa_new_password ;
 scalar_t__ g_wpa_new_password_len ;
 scalar_t__ g_wpa_password ;
 scalar_t__ g_wpa_password_len ;
 scalar_t__ g_wpa_username ;
 scalar_t__ g_wpa_username_len ;
 int os_memcpy (int *,scalar_t__,scalar_t__) ;
 scalar_t__ os_zalloc (scalar_t__) ;

int eap_peer_config_init(
 struct eap_sm *sm, const u8 *private_key_passwd,
 int private_key_passwd_len)
{
 if (!sm)
  return -1;

 sm->config.anonymous_identity = ((void*)0);
 sm->config.identity = ((void*)0);
 sm->config.password = ((void*)0);
 sm->config.new_password = ((void*)0);

 sm->config.private_key_passwd = private_key_passwd;
 sm->config.client_cert = (u8 *)sm->blob[0].name;
 sm->config.private_key = (u8 *)sm->blob[1].name;
 sm->config.ca_cert = (u8 *)sm->blob[2].name;

 sm->config.ca_path = ((void*)0);

 sm->config.fragment_size = 1400;


 if (g_wpa_anonymous_identity && g_wpa_anonymous_identity_len > 0) {
     sm->config.anonymous_identity_len = g_wpa_anonymous_identity_len;
     sm->config.anonymous_identity = (u8 *)os_zalloc(sm->config.anonymous_identity_len);
     if (sm->config.anonymous_identity == ((void*)0))
      return -2;
     os_memcpy(sm->config.anonymous_identity, g_wpa_anonymous_identity, g_wpa_anonymous_identity_len);
 }


 if (g_wpa_username && g_wpa_username_len > 0) {
  sm->config.identity_len = g_wpa_username_len;
  sm->config.identity = (u8 *)os_zalloc(sm->config.identity_len);
  if (sm->config.identity == ((void*)0)) {
   return -2;
  }
  os_memcpy(sm->config.identity, g_wpa_username, g_wpa_username_len);
 }

 if (g_wpa_password && g_wpa_password_len) {
  sm->config.password_len = g_wpa_password_len;
  sm->config.password = (u8 *)os_zalloc(sm->config.password_len);
  if (sm->config.password == ((void*)0))
   return -2;
  os_memcpy(sm->config.password, g_wpa_password, sm->config.password_len);
 }

 if (g_wpa_new_password && g_wpa_new_password_len) {
  sm->config.new_password_len = g_wpa_new_password_len;
  sm->config.new_password = (u8 *)os_zalloc(sm->config.new_password_len);
  if (sm->config.new_password == ((void*)0))
   return -2;
  os_memcpy(sm->config.new_password, g_wpa_new_password,
     sm->config.new_password_len);
 }

 return 0;

}
