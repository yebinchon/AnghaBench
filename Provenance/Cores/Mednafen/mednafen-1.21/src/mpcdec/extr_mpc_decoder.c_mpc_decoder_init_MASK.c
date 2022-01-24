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
typedef  int /*<<< orphan*/  mpc_streaminfo ;
typedef  int /*<<< orphan*/  mpc_decoder ;

/* Variables and functions */
 int /*<<< orphan*/  LUT_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

mpc_decoder * FUNC4(mpc_streaminfo *si)
{
	mpc_decoder* p_tmp = FUNC1(sizeof(mpc_decoder));

	if (p_tmp != 0) {
		FUNC3(p_tmp);
		FUNC2(p_tmp, si);
		FUNC0(LUT_DEPTH); // FIXME : this needs to be called only once when the library is loaded
	}

	return p_tmp;
}