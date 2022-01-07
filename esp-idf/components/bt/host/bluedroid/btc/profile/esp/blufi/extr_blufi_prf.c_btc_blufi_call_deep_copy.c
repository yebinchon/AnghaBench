
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int sta_ssid_len; int sta_passwd_len; int softap_ssid_len; int softap_passwd_len; int softap_channel; int softap_channel_set; int softap_max_conn_num; int softap_max_conn_num_set; int softap_authmode; int softap_authmode_set; int * softap_passwd; int * softap_ssid; int * sta_passwd; int * sta_ssid; int sta_bssid_set; int * sta_bssid; } ;
typedef TYPE_4__ esp_blufi_extra_info_t ;
typedef int esp_blufi_ap_record_t ;
struct TYPE_13__ {int act; } ;
typedef TYPE_5__ btc_msg_t ;
struct TYPE_10__ {int data_len; int * data; } ;
struct TYPE_9__ {int apCount; int * list; } ;
struct TYPE_11__ {int extra_info_len; TYPE_4__* extra_info; } ;
struct TYPE_14__ {TYPE_2__ custom_data; TYPE_1__ wifi_list; TYPE_3__ wifi_conn_report; } ;
typedef TYPE_6__ btc_blufi_args_t ;





 int BTC_TRACE_ERROR (char*) ;
 int memcpy (int *,int *,int) ;
 TYPE_4__* osi_calloc (int) ;
 void* osi_malloc (int) ;

void btc_blufi_call_deep_copy(btc_msg_t *msg, void *p_dest, void *p_src)
{
    btc_blufi_args_t *dst = (btc_blufi_args_t *) p_dest;
    btc_blufi_args_t *src = (btc_blufi_args_t *) p_src;

    switch (msg->act) {
    case 130: {
        esp_blufi_extra_info_t *src_info = src->wifi_conn_report.extra_info;
        dst->wifi_conn_report.extra_info_len = 0;
        dst->wifi_conn_report.extra_info = ((void*)0);

        if (src_info == ((void*)0)) {
            return;
        }

        dst->wifi_conn_report.extra_info = osi_calloc(sizeof(esp_blufi_extra_info_t));
        if (dst->wifi_conn_report.extra_info == ((void*)0)) {
            return;
        }

        if (src_info->sta_bssid_set) {
            memcpy(dst->wifi_conn_report.extra_info->sta_bssid, src_info->sta_bssid, 6);
            dst->wifi_conn_report.extra_info->sta_bssid_set = src_info->sta_bssid_set;
            dst->wifi_conn_report.extra_info_len += (6 + 2);
        }
        if (src_info->sta_ssid) {
            dst->wifi_conn_report.extra_info->sta_ssid = osi_malloc(src_info->sta_ssid_len);
            if (dst->wifi_conn_report.extra_info->sta_ssid) {
                memcpy(dst->wifi_conn_report.extra_info->sta_ssid, src_info->sta_ssid, src_info->sta_ssid_len);
                dst->wifi_conn_report.extra_info->sta_ssid_len = src_info->sta_ssid_len;
                dst->wifi_conn_report.extra_info_len += (dst->wifi_conn_report.extra_info->sta_ssid_len + 2);
            }
        }
        if (src_info->sta_passwd) {
            dst->wifi_conn_report.extra_info->sta_passwd = osi_malloc(src_info->sta_passwd_len);
            if (dst->wifi_conn_report.extra_info->sta_passwd) {
                memcpy(dst->wifi_conn_report.extra_info->sta_passwd, src_info->sta_passwd, src_info->sta_passwd_len);
                dst->wifi_conn_report.extra_info->sta_passwd_len = src_info->sta_passwd_len;
                dst->wifi_conn_report.extra_info_len += (dst->wifi_conn_report.extra_info->sta_passwd_len + 2);
            }
        }
        if (src_info->softap_ssid) {
            dst->wifi_conn_report.extra_info->softap_ssid = osi_malloc(src_info->softap_ssid_len);
            if (dst->wifi_conn_report.extra_info->softap_ssid) {
                memcpy(dst->wifi_conn_report.extra_info->softap_ssid, src_info->softap_ssid, src_info->softap_ssid_len);
                dst->wifi_conn_report.extra_info->softap_ssid_len = src_info->softap_ssid_len;
                dst->wifi_conn_report.extra_info_len += (dst->wifi_conn_report.extra_info->softap_ssid_len + 2);
            }
        }
        if (src_info->softap_passwd) {
            dst->wifi_conn_report.extra_info->softap_passwd = osi_malloc(src_info->softap_passwd_len);
            if (dst->wifi_conn_report.extra_info->softap_passwd) {
                memcpy(dst->wifi_conn_report.extra_info->softap_passwd, src_info->softap_passwd, src_info->softap_passwd_len);
                dst->wifi_conn_report.extra_info->softap_passwd_len = src_info->softap_passwd_len;
                dst->wifi_conn_report.extra_info_len += (dst->wifi_conn_report.extra_info->softap_passwd_len + 2);
            }
        }
        if (src_info->softap_authmode_set) {
            dst->wifi_conn_report.extra_info->softap_authmode_set = src_info->softap_authmode_set;
            dst->wifi_conn_report.extra_info->softap_authmode = src_info->softap_authmode;
            dst->wifi_conn_report.extra_info_len += (1 + 2);
        }
        if (src_info->softap_max_conn_num_set) {
            dst->wifi_conn_report.extra_info->softap_max_conn_num_set = src_info->softap_max_conn_num_set;
            dst->wifi_conn_report.extra_info->softap_max_conn_num = src_info->softap_max_conn_num;
            dst->wifi_conn_report.extra_info_len += (1 + 2);
        }
        if (src_info->softap_channel_set) {
            dst->wifi_conn_report.extra_info->softap_channel_set = src_info->softap_channel_set;
            dst->wifi_conn_report.extra_info->softap_channel = src_info->softap_channel;
            dst->wifi_conn_report.extra_info_len += (1 + 2);
        }
        break;
    }
    case 128:{
        esp_blufi_ap_record_t *list = src->wifi_list.list;
        src->wifi_list.list = ((void*)0);
        if (list == ((void*)0) || src->wifi_list.apCount <= 0) {
            break;
        }
        dst->wifi_list.list = (esp_blufi_ap_record_t *)osi_malloc(sizeof(esp_blufi_ap_record_t) * src->wifi_list.apCount);
        if (dst->wifi_list.list == ((void*)0)) {
            break;
        }
        memcpy(dst->wifi_list.list, list, sizeof(esp_blufi_ap_record_t) * src->wifi_list.apCount);
        break;
    }
    case 129:{
        uint8_t *data = src->custom_data.data;
        if(data == ((void*)0)) {
            BTC_TRACE_ERROR("custom data is NULL\n");
            break;
        }
        dst->custom_data.data = osi_malloc(src->custom_data.data_len);
        if(dst->custom_data.data == ((void*)0)) {
            BTC_TRACE_ERROR("custom data malloc error\n");
            break;
        }
        memcpy(dst->custom_data.data, src->custom_data.data, src->custom_data.data_len);
        break;
    }
    default:
        break;
    }
}
