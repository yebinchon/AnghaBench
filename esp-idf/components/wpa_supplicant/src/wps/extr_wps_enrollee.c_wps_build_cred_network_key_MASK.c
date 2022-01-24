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
struct wps_data {TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  network_key_len; int /*<<< orphan*/  network_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_NETWORK_KEY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wps_data *wps, struct wpabuf *msg)
{
	FUNC0(MSG_DEBUG,  "WPS:  * Network Key");
	FUNC1(msg, ATTR_NETWORK_KEY);
	FUNC1(msg, wps->wps->network_key_len);
	FUNC2(msg, wps->wps->network_key, wps->wps->network_key_len);
	return 0;
}