#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mpc_status ;
struct TYPE_4__ {int bits; scalar_t__ samples; } ;
typedef  TYPE_1__ mpc_frame_info ;
typedef  int /*<<< orphan*/  mpc_demux ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

mpc_status FUNC2(mpc_demux * d, mpc_frame_info * i) {
	for(;;) {
		// mpc_demux_decode_inner may return 0 samples and require repeated calls after a seek. Loop over until we have data to return.
		mpc_status s = FUNC1(d, i);
		if (FUNC0(s))
			i->bits = -1; // we pretend it's end of file

		if (i->bits == -1 || i->samples > 0)
			return s;
	}
}