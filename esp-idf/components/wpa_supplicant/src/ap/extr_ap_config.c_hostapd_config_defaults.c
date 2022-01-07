
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_config {int num_bss; int beacon_int; int rts_threshold; int fragm_threshold; int send_probe_response; int ap_table_max_size; int ap_table_expiration_time; int ht_capab; struct hostapd_config* bss; } ;
struct hostapd_bss_config {int num_bss; int beacon_int; int rts_threshold; int fragm_threshold; int send_probe_response; int ap_table_max_size; int ap_table_expiration_time; int ht_capab; struct hostapd_bss_config* bss; } ;


 int HT_CAP_INFO_SMPS_DISABLED ;
 int MSG_DEBUG ;
 int hostapd_config_defaults_bss (struct hostapd_config*) ;
 int os_free (struct hostapd_config*) ;
 scalar_t__ os_zalloc (int) ;
 int wpa_printf (int ,char*) ;

struct hostapd_config * hostapd_config_defaults(void)
{


    struct hostapd_config *conf;
    struct hostapd_bss_config *bss;


    conf = (struct hostapd_config *)os_zalloc(sizeof(*conf));
    bss = (struct hostapd_bss_config *)os_zalloc(sizeof(*bss));
    if (conf == ((void*)0) || bss == ((void*)0)) {
     wpa_printf(MSG_DEBUG, "Failed to allocate memory for "
               "configuration data.");
        os_free(conf);
        os_free(bss);
        return ((void*)0);
    }

    hostapd_config_defaults_bss(bss);

    conf->num_bss = 1;
    conf->bss = bss;

    conf->beacon_int = 100;
    conf->rts_threshold = -1;
    conf->fragm_threshold = -1;
    conf->send_probe_response = 1;

    conf->ht_capab = HT_CAP_INFO_SMPS_DISABLED;

    conf->ap_table_max_size = 255;
    conf->ap_table_expiration_time = 60;

    return conf;
}
