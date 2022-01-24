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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  REMOTE_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

REMOTE_CLIENT *FUNC1(char *server_name, char *password, bool *bad_pass, bool *no_remote, UINT wait_retry)
{
	return FUNC0(server_name, password, bad_pass, no_remote, NULL, NULL, false, wait_retry);
}