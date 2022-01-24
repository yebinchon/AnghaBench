#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wps_sm {int ignore_sel_reg; TYPE_1__* dis_ap_list; } ;
struct wps_parse_attr {scalar_t__* selected_registrar; int /*<<< orphan*/  dev_password_id; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 scalar_t__ DEV_PW_PUSHBUTTON ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int WPS_MAX_DIS_AP_NUM ; 
 int /*<<< orphan*/  FUNC1 (struct wps_parse_attr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct wpabuf const*,struct wps_parse_attr*) ; 
 struct wps_sm* FUNC6 () ; 

int FUNC7(const struct wpabuf *msg, u8 *bssid)
{
	struct wps_sm *sm = FUNC6();
    struct wps_parse_attr *attr = (struct wps_parse_attr *)FUNC3(sizeof(struct wps_parse_attr));
    int i = 0;

    /*
     * In theory, this could also verify that attr.sel_reg_config_methods
     * includes WPS_CONFIG_PUSHBUTTON, but some deployed AP implementations
     * do not set Selected Registrar Config Methods attribute properly, so
     * it is safer to just use Device Password ID here.
     */

    if (FUNC5(msg, attr) < 0) {
    	FUNC1(attr);
    	return 0;
    }

    if(!attr->selected_registrar || *attr->selected_registrar == 0) {
    	if (sm->ignore_sel_reg == false) {
    		FUNC1(attr);
    	    return 0;
    	}
    	else {
    	   for (i = 0; i < WPS_MAX_DIS_AP_NUM; i++) {
    	    	if (0 == FUNC2(sm->dis_ap_list[i].bssid, bssid, 6)) {
    	    		FUNC4(MSG_DEBUG, "discard ap bssid[%02x:%02x:%02x:%02x:%02x:%02x]\n", \
    	    				bssid[0], bssid[1], bssid[2], bssid[3], bssid[4], bssid[5]);
    	    		FUNC1(attr);
    	    		return 0;
    	    	}
    	   }
    	}
    }

    if (!attr->dev_password_id ||
        FUNC0(attr->dev_password_id) != DEV_PW_PUSHBUTTON) {
        FUNC1(attr);
        return 0;
    }

    FUNC1(attr);
    return 1;
}