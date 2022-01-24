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
struct wps_data {scalar_t__ snonce; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ ATTR_E_SNONCE2 ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WPS_SECRET_NONCE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct wps_data *wps, struct wpabuf *msg)
{
	FUNC0(MSG_DEBUG,  "WPS:  * E-SNonce2");
	FUNC1(msg, ATTR_E_SNONCE2);
	FUNC1(msg, WPS_SECRET_NONCE_LEN);
	FUNC2(msg, wps->snonce + WPS_SECRET_NONCE_LEN,
			WPS_SECRET_NONCE_LEN);
	return 0;
}