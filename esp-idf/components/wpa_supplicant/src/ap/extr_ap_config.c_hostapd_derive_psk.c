
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostapd_wpa_psk {int psk; } ;
struct hostapd_ssid {struct hostapd_wpa_psk* wpa_psk; int ssid_len; scalar_t__ ssid; scalar_t__ wpa_passphrase; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int PMK_LEN ;
 int esp_wifi_ap_get_prof_pmk_internal () ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ os_zalloc (int) ;
 int pbkdf2_sha1 (scalar_t__,scalar_t__,int ,int,int ,int ) ;
 int strlen (scalar_t__) ;
 int wpa_hexdump_ascii (int ,char*,int *,int ) ;
 int wpa_hexdump_ascii_key (int ,char*,int *,int ) ;
 int wpa_hexdump_key (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int hostapd_derive_psk(struct hostapd_ssid *ssid)
{
    ssid->wpa_psk = (struct hostapd_wpa_psk *)os_zalloc(sizeof(struct hostapd_wpa_psk));
    if (ssid->wpa_psk == ((void*)0)) {
     wpa_printf(MSG_ERROR, "Unable to alloc space for PSK");
        return -1;
    }
    wpa_hexdump_ascii(MSG_DEBUG, "SSID",
              (u8 *) ssid->ssid, ssid->ssid_len);
    wpa_hexdump_ascii_key(MSG_DEBUG, "PSK (ASCII passphrase)",
                  (u8 *) ssid->wpa_passphrase,
                  strlen(ssid->wpa_passphrase));




    pbkdf2_sha1(ssid->wpa_passphrase,
            ssid->ssid, ssid->ssid_len,
            4096, ssid->wpa_psk->psk, PMK_LEN);

    wpa_hexdump_key(MSG_DEBUG, "PSK (from passphrase)",
            ssid->wpa_psk->psk, PMK_LEN);
    return 0;
}
