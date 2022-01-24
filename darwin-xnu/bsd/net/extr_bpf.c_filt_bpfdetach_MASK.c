#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct knote {scalar_t__ kn_hook; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct bpf_d {int bd_flags; TYPE_1__ bd_sel; } ;

/* Variables and functions */
 int BPF_KNOTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*) ; 
 int /*<<< orphan*/  bpf_mlock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct knote *kn)
{
	struct bpf_d *d = (struct bpf_d *)kn->kn_hook;

	FUNC1(bpf_mlock);
	if (d->bd_flags & BPF_KNOTE) {
		FUNC0(&d->bd_sel.si_note, kn);
		d->bd_flags &= ~BPF_KNOTE;
	}
	FUNC2(bpf_mlock);
}