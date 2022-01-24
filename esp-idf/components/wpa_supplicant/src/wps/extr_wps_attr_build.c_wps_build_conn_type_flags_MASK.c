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
struct wps_data {int dummy; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ATTR_CONN_TYPE_FLAGS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPS_CONN_ESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 

int FUNC3(struct wps_data *wps, struct wpabuf *msg)
{
	FUNC0(MSG_DEBUG,  "WPS:  * Connection Type Flags");
	FUNC1(msg, ATTR_CONN_TYPE_FLAGS);
	FUNC1(msg, 1);
	FUNC2(msg, WPS_CONN_ESS);
	return 0;
}