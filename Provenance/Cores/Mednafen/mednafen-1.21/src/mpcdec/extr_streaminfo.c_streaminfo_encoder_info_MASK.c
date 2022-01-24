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
struct TYPE_4__ {int profile; int pns; int encoder_version; int /*<<< orphan*/  profile_name; } ;
typedef  TYPE_1__ mpc_streaminfo ;
typedef  int /*<<< orphan*/  mpc_bits_reader ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void  FUNC3(mpc_streaminfo* si, const mpc_bits_reader * r_in)
{
	mpc_bits_reader r = *r_in;

	si->profile            = FUNC0(&r, 7) / 8.;
	si->profile_name       = FUNC2(si->profile);
	si->pns                = FUNC0(&r, 1);
	si->encoder_version = FUNC0(&r, 8) << 24; // major
	si->encoder_version |= FUNC0(&r, 8) << 16; // minor
	si->encoder_version |= FUNC0(&r, 8) << 8; // build


	FUNC1(si);
}