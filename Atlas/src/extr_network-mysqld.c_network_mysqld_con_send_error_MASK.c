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
typedef  int /*<<< orphan*/  network_socket ;
typedef  int /*<<< orphan*/  gsize ;

/* Variables and functions */
 int /*<<< orphan*/  ER_UNKNOWN_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(network_socket *con, const char *errmsg, gsize errmsg_len) {
	return FUNC0(con, errmsg, errmsg_len, ER_UNKNOWN_ERROR, NULL);
}