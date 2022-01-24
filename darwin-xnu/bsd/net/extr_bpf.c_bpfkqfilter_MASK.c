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
struct knote {scalar_t__ kn_filter; int /*<<< orphan*/  kn_filtid; struct bpf_d* kn_hook; int /*<<< orphan*/  kn_data; void* kn_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct bpf_d {int bd_flags; TYPE_1__ bd_sel; int /*<<< orphan*/ * bd_bif; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int BPF_CLOSING ; 
 struct bpf_d* BPF_DEV_RESERVED ; 
 int BPF_KNOTE ; 
 scalar_t__ CDEV_MAJOR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  EVFILTID_BPFREAD ; 
 scalar_t__ EVFILT_READ ; 
 void* EV_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*) ; 
 struct bpf_d** bpf_dtab ; 
 int /*<<< orphan*/  bpf_mlock ; 
 int FUNC1 (struct knote*,struct bpf_d*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(dev_t dev, struct knote *kn)
{
	struct bpf_d *d;
	int res;

	/*
	 * Is this device a bpf?
	 */
	if (FUNC4(dev) != CDEV_MAJOR ||
	    kn->kn_filter != EVFILT_READ) {
		kn->kn_flags = EV_ERROR;
		kn->kn_data = EINVAL;
		return (0);
	}

	FUNC2(bpf_mlock);

	d = bpf_dtab[FUNC5(dev)];

	if (d == NULL || d == BPF_DEV_RESERVED ||
	    (d->bd_flags & BPF_CLOSING) != 0 ||
	    d->bd_bif == NULL) {
		FUNC3(bpf_mlock);
		kn->kn_flags = EV_ERROR;
		kn->kn_data = ENXIO;
		return (0);
	}

	kn->kn_hook = d;
	kn->kn_filtid = EVFILTID_BPFREAD;
	FUNC0(&d->bd_sel.si_note, kn);
	d->bd_flags |= BPF_KNOTE;

	/* capture the current state */
	res = FUNC1(kn, d);

	FUNC3(bpf_mlock);

	return (res);
}