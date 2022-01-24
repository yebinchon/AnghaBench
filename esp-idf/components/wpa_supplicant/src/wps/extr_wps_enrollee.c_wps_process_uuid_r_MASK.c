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
typedef  int /*<<< orphan*/  u8 ;
struct wps_data {int /*<<< orphan*/  uuid_r; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPS_UUID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct wps_data *wps, const u8 *uuid_r)
{
	if (uuid_r == NULL) {
		FUNC2(MSG_DEBUG,  "WPS: No UUID-R received");
		return -1;
	}

	FUNC0(wps->uuid_r, uuid_r, WPS_UUID_LEN);
	FUNC1(MSG_DEBUG, "WPS: UUID-R", wps->uuid_r, WPS_UUID_LEN);

	return 0;
}