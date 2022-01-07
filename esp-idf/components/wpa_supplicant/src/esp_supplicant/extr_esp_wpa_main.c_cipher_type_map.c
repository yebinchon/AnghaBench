
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WIFI_CIPHER_TYPE_CCMP ;
 int WIFI_CIPHER_TYPE_NONE ;
 int WIFI_CIPHER_TYPE_TKIP ;
 int WIFI_CIPHER_TYPE_TKIP_CCMP ;
 int WIFI_CIPHER_TYPE_UNKNOWN ;
 int WIFI_CIPHER_TYPE_WEP104 ;
 int WIFI_CIPHER_TYPE_WEP40 ;






int cipher_type_map(int wpa_cipher)
{
    switch (wpa_cipher) {
    case 131:
        return WIFI_CIPHER_TYPE_NONE;

    case 128:
        return WIFI_CIPHER_TYPE_WEP40;

    case 129:
        return WIFI_CIPHER_TYPE_WEP104;

    case 130:
        return WIFI_CIPHER_TYPE_TKIP;

    case 132:
        return WIFI_CIPHER_TYPE_CCMP;

    case 132|130:
        return WIFI_CIPHER_TYPE_TKIP_CCMP;

    default:
        return WIFI_CIPHER_TYPE_UNKNOWN;
    }
}
