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
typedef  int /*<<< orphan*/  mpc_status ;
typedef  int /*<<< orphan*/  mpc_reader ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MPC_STATUS_FAIL ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

mpc_status
FUNC2(mpc_reader *p_reader, const char *filename)
{
	FILE * stream = FUNC0(filename, "rb");
	if (stream == NULL) return MPC_STATUS_FAIL;
	return FUNC1(p_reader,stream);
}