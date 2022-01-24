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
typedef  int /*<<< orphan*/  X ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  K ;
typedef  int /*<<< orphan*/  INTERNET_SETTING ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

PACK *FUNC1(char *url, INTERNET_SETTING *setting, UINT timeout_connect, UINT timeout_comm,
			  char *function_name, PACK *pack, X *cert, K *key, void *sha1_cert_hash)
{
	return FUNC0(url, setting, timeout_connect, timeout_comm, function_name, pack, cert, key,
		sha1_cert_hash, NULL, 0, NULL, NULL);
}