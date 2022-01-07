
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;


 int esp_wifi_get_sta_key_internal (int *,int*,int *,int*,int *,size_t,int) ;

int wpa_get_key(uint8_t *ifx, int *alg, u8 *addr, int *key_idx,
                 u8 *key, size_t key_len, int key_entry_valid)
{
    return esp_wifi_get_sta_key_internal(ifx, alg, addr, key_idx, key, key_len, key_entry_valid);
}
