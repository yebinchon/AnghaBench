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
struct kevent_internal_s {int dummy; } ;
struct knote {struct kevent_internal_s kn_kevent; scalar_t__ kn_hook; } ;
struct filt_process_s {int dummy; } ;
struct bpf_d {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  bpf_mlock ; 
 int FUNC0 (struct knote*,struct bpf_d*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct knote *kn, struct filt_process_s *data,
    struct kevent_internal_s *kev)
{
#pragma unused(data)
	struct bpf_d *d = (struct bpf_d *)kn->kn_hook;
	int res;

	FUNC1(bpf_mlock);
	res = FUNC0(kn, d);
	if (res) {
		*kev = kn->kn_kevent;
	}
	FUNC2(bpf_mlock);

	return (res);
}