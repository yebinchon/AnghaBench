
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_ptk {int kck; } ;
struct wpa_eapol_key {int * key_mic; int key_info; } ;
struct ieee802_1x_hdr {int dummy; } ;


 int MSG_DEBUG ;
 int WPA_GET_BE16 (int ) ;
 int WPA_KEY_INFO_TYPE_MASK ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int os_memcpy (char*,char*,int) ;
 int os_memset (char*,int ,int) ;
 int wpa_dump_mem (char*,int *,int) ;
 int wpa_eapol_key_mic (int ,int,int *,size_t,int *) ;
 int wpa_printf (int ,char*,size_t) ;

__attribute__((used)) static int wpa_verify_key_mic(struct wpa_ptk *PTK, u8 *data, size_t data_len)
{
    struct ieee802_1x_hdr *hdr;
    struct wpa_eapol_key *key;
    u16 key_info;
    int ret = 0;
    int mic_ret = 0;
    u8 mic[16];
    char debug_log[8];

    if (data_len < sizeof(*hdr) + sizeof(*key)){
        wpa_printf( MSG_DEBUG, "invalid data length, len=%u\n", data_len);
        return -1;
    }

    hdr = (struct ieee802_1x_hdr *) data;
    key = (struct wpa_eapol_key *) (hdr + 1);
    key_info = WPA_GET_BE16(key->key_info);
    memcpy(mic, key->key_mic, 16);
    memset(key->key_mic, 0, 16);

    mic_ret = wpa_eapol_key_mic(PTK->kck, key_info & WPA_KEY_INFO_TYPE_MASK, data, data_len, key->key_mic);
    if ( mic_ret || memcmp(mic, key->key_mic, 16) != 0) {
        ret = -1;
    }
    os_memset(debug_log, 0, 8);
    os_memcpy(debug_log, "you mic", sizeof("you mic"));
    wpa_dump_mem(debug_log, mic, 16);
    os_memset(debug_log, 0, 8);
    os_memcpy(debug_log, "my mic", sizeof("my mic"));
    wpa_dump_mem(debug_log, key->key_mic, 16);

    memcpy(key->key_mic, mic, 16);
    return ret;
}
