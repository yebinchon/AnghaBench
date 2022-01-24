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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct bpf_d {scalar_t__ bd_state; int bd_flags; TYPE_1__ bd_sel; scalar_t__ bd_sig; scalar_t__ bd_sigio; scalar_t__ bd_async; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ BPF_IDLE ; 
 int BPF_KNOTE ; 
 scalar_t__ BPF_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_d*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bpf_d *d)
{
	if (d->bd_state == BPF_WAITING) {
		FUNC1(d);
		d->bd_state = BPF_IDLE;
	}
	FUNC4((caddr_t)d);
	if (d->bd_async && d->bd_sig && d->bd_sigio)
		FUNC2(d->bd_sigio, d->bd_sig);

	FUNC3(&d->bd_sel);
	if ((d->bd_flags & BPF_KNOTE))
		FUNC0(&d->bd_sel.si_note, 1);
}