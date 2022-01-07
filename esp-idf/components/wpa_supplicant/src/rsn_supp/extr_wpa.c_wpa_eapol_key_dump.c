
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct wpa_eapol_key {int key_data_length; int key_length; int type; int key_info; } ;


 int BIT (int) ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int WPA_GET_BE16 (int ) ;
 int WPA_KEY_INFO_ACK ;
 int WPA_KEY_INFO_ENCR_KEY_DATA ;
 int WPA_KEY_INFO_ERROR ;
 int WPA_KEY_INFO_INSTALL ;
 int WPA_KEY_INFO_KEY_INDEX_MASK ;
 int WPA_KEY_INFO_KEY_INDEX_SHIFT ;
 int WPA_KEY_INFO_KEY_TYPE ;
 int WPA_KEY_INFO_MIC ;
 int WPA_KEY_INFO_REQUEST ;
 int WPA_KEY_INFO_SECURE ;
 int WPA_KEY_INFO_TYPE_MASK ;
 int wpa_printf (int ,char*,int,...) ;

void wpa_eapol_key_dump(int level, const struct wpa_eapol_key *key)
{
}
