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
struct wps_credential {int /*<<< orphan*/  auth_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC2(struct wps_credential *cred,
				      const u8 *auth_type)
{
	if (auth_type == NULL) {
		FUNC1(MSG_DEBUG,  "WPS: Credential did not include "
			   "Authentication Type");
		return -1;
	}

	cred->auth_type = FUNC0(auth_type);
	FUNC1(MSG_DEBUG,  "WPS: Authentication Type: 0x%x",
		   cred->auth_type);

	return 0;
}