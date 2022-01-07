
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wps_sm {int discard_ap_cnt; TYPE_1__* dis_ap_list; } ;
struct TYPE_2__ {int* bssid; } ;


 int WPS_MAX_DIS_AP_NUM ;
 struct wps_sm* gWpsSm ;
 int memcpy (int*,int*,int) ;

void wps_add_discard_ap(u8 *bssid)
{
    struct wps_sm *sm = gWpsSm;
    u8 cnt = sm->discard_ap_cnt;

    if (!gWpsSm || !bssid) {
        return;
    }

    if (sm->discard_ap_cnt < WPS_MAX_DIS_AP_NUM) {
        sm->discard_ap_cnt++;
    } else {
        for (cnt = 0; cnt < WPS_MAX_DIS_AP_NUM - 2; cnt++) {
            memcpy(sm->dis_ap_list[cnt].bssid, sm->dis_ap_list[cnt + 1].bssid, 6);
        }
        sm->discard_ap_cnt = WPS_MAX_DIS_AP_NUM;
    }
    memcpy(sm->dis_ap_list[cnt].bssid, bssid, 6);
}
