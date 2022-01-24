#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hostapd_config {int num_bss; int beacon_int; int rts_threshold; int fragm_threshold; int send_probe_response; int ap_table_max_size; int ap_table_expiration_time; int /*<<< orphan*/  ht_capab; struct hostapd_config* bss; } ;
struct hostapd_bss_config {int num_bss; int beacon_int; int rts_threshold; int fragm_threshold; int send_probe_response; int ap_table_max_size; int ap_table_expiration_time; int /*<<< orphan*/  ht_capab; struct hostapd_bss_config* bss; } ;

/* Variables and functions */
 int /*<<< orphan*/  HT_CAP_INFO_SMPS_DISABLED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_config*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

struct hostapd_config * FUNC4(void)
{
#define ecw2cw(ecw) ((1 << (ecw)) - 1)

    struct hostapd_config *conf;
    struct hostapd_bss_config *bss;
#undef ecw2cw

    conf = (struct hostapd_config *)FUNC2(sizeof(*conf));
    bss = (struct hostapd_bss_config *)FUNC2(sizeof(*bss));
    if (conf == NULL || bss == NULL) {
    	FUNC3(MSG_DEBUG, "Failed to allocate memory for "
               "configuration data.");
        FUNC1(conf);
        FUNC1(bss);
        return NULL;
    }

    FUNC0(bss);

    conf->num_bss = 1;
    conf->bss = bss;

    conf->beacon_int = 100;
    conf->rts_threshold = -1; /* use driver default: 2347 */
    conf->fragm_threshold = -1; /* user driver default: 2346 */
    conf->send_probe_response = 1;

    conf->ht_capab = HT_CAP_INFO_SMPS_DISABLED;

    conf->ap_table_max_size = 255;
    conf->ap_table_expiration_time = 60;

    return conf;
}