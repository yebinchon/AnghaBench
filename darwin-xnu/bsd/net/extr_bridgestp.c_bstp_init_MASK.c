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
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct bstp_state {int bs_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstp_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct bstp_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bstp_state*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (struct bstp_state*) ; 
 int /*<<< orphan*/  bstp_tick ; 

void
FUNC4(struct bstp_state *bs)
{
	struct timespec ts;

	ts.tv_sec = 1;
	ts.tv_nsec = 0;

	FUNC0(bs);
	FUNC2(bstp_tick, bs, &ts);
	bs->bs_running = 1;
	FUNC3(bs);
	FUNC1(bs);
}