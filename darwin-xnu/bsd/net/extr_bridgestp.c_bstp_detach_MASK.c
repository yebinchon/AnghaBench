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
struct bstp_state {int /*<<< orphan*/  bs_bplist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstp_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bstp_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bs_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct bstp_state*) ; 
 int /*<<< orphan*/  bstp_list_mtx ; 
 int /*<<< orphan*/  bstp_tick ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(struct bstp_state *bs)
{
	FUNC1(FUNC2(&bs->bs_bplist), ("bstp still active"));

	FUNC5(bstp_list_mtx);
	FUNC3(bs, bs_list);
	FUNC6(bstp_list_mtx);
	FUNC4(bstp_tick, bs);
	FUNC0(bs);
}