
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* mgmt_group_cipher; int pmkid; int capabilities; int key_mgmt; void* group_cipher; void* pairwise_cipher; int proto; } ;
typedef TYPE_1__ wifi_wpa_ie_t ;
typedef int u8 ;
struct wpa_ie_data {int mgmt_group_cipher; int pmkid; int capabilities; int key_mgmt; int group_cipher; int pairwise_cipher; int proto; } ;


 void* cipher_type_map (int ) ;
 int wpa_parse_wpa_ie (int const*,size_t,struct wpa_ie_data*) ;

int wpa_parse_wpa_ie_wrapper(const u8 *wpa_ie, size_t wpa_ie_len, wifi_wpa_ie_t *data)
{
    struct wpa_ie_data ie;
    int ret = 0;

    ret = wpa_parse_wpa_ie(wpa_ie, wpa_ie_len, &ie);
    data->proto = ie.proto;
    data->pairwise_cipher = cipher_type_map(ie.pairwise_cipher);
    data->group_cipher = cipher_type_map(ie.group_cipher);
    data->key_mgmt = ie.key_mgmt;
    data->capabilities = ie.capabilities;
    data->pmkid = ie.pmkid;
    data->mgmt_group_cipher = cipher_type_map(ie.mgmt_group_cipher);

    return ret;
}
