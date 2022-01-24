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
struct wps_sm {int /*<<< orphan*/  wps_eapol_start_timer; } ;
struct wps_data {int /*<<< orphan*/  state; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SEND_M1 ; 
 int WPS_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct wps_sm* gWpsSm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static enum wps_process_res FUNC2(struct wps_data *wps,
						const struct wpabuf *msg)
{
	struct wps_sm *sm = gWpsSm;
	enum wps_process_res ret = WPS_CONTINUE;

	FUNC1(MSG_DEBUG,  "WPS: Received WSC_START");
	FUNC0(&sm->wps_eapol_start_timer);
        wps->state = SEND_M1;
	return ret;
}