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
struct knote {int /*<<< orphan*/  kn_sfflags; int /*<<< orphan*/  kn_sdata; scalar_t__ kn_hook; } ;
struct kevent_internal_s {int /*<<< orphan*/  fflags; int /*<<< orphan*/  data; } ;
struct bpf_d {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  bpf_mlock ; 
 int FUNC0 (struct knote*,struct bpf_d*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct knote *kn, struct kevent_internal_s *kev)
{
	struct bpf_d *d = (struct bpf_d *)kn->kn_hook;
	int res;

	FUNC1(bpf_mlock);

	/* save off the lowat threshold and flag */
	kn->kn_sdata = kev->data;
	kn->kn_sfflags = kev->fflags;

	/* output data will be re-generated here */
	res = FUNC0(kn, d);

	FUNC2(bpf_mlock);

	return (res);
}