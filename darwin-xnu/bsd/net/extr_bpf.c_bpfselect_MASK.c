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
struct proc {int dummy; } ;
struct bpf_d {int bd_flags; scalar_t__ bd_hbuf_read; int /*<<< orphan*/  bd_sel; int /*<<< orphan*/  bd_slen; int /*<<< orphan*/  bd_state; int /*<<< orphan*/  bd_immediate; int /*<<< orphan*/  bd_hlen; int /*<<< orphan*/ * bd_bif; } ;
typedef  int /*<<< orphan*/  dev_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int BPF_CLOSING ; 
 struct bpf_d* BPF_DEV_RESERVED ; 
 int /*<<< orphan*/  BPF_TIMED_OUT ; 
 int ENXIO ; 
#define  FREAD 129 
#define  FWRITE 128 
 int /*<<< orphan*/  PRINET ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_d*) ; 
 struct bpf_d** bpf_dtab ; 
 int /*<<< orphan*/  bpf_mlock ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_d*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_d*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*,int /*<<< orphan*/ *,void*) ; 

int
FUNC8(dev_t dev, int which, void * wql, struct proc *p)
{
	struct bpf_d *d;
	int ret = 0;

	FUNC3(bpf_mlock);

	d = bpf_dtab[FUNC5(dev)];
	if (d == NULL || d == BPF_DEV_RESERVED ||
	    (d->bd_flags & BPF_CLOSING) != 0) {
		FUNC4(bpf_mlock);
		return (ENXIO);
	}

	FUNC0(d);

	if (d->bd_bif == NULL) {
		FUNC1(d);
		FUNC4(bpf_mlock);
		return (ENXIO);
	}

	while (d->bd_hbuf_read != 0)
		FUNC6((caddr_t)d, bpf_mlock, PRINET, "bpf_reading", NULL);

	if ((d->bd_flags & BPF_CLOSING) != 0) {
		FUNC1(d);
		FUNC4(bpf_mlock);
		return (ENXIO);
	}

	switch (which) {
		case FREAD:
			if (d->bd_hlen != 0 ||
			    ((d->bd_immediate ||
			    d->bd_state == BPF_TIMED_OUT) && d->bd_slen != 0))
				ret = 1; /* read has data to return */
			else {
				/*
				 * Read has no data to return.
				 * Make the select wait, and start a timer if
				 * necessary.
				 */
				FUNC7(p, &d->bd_sel, wql);
				FUNC2(d);
			}
			break;

		case FWRITE:
			/* can't determine whether a write would block */
			ret = 1;
			break;
	}

	FUNC1(d);
	FUNC4(bpf_mlock);

	return (ret);
}