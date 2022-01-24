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
typedef  scalar_t__ user_addr_t ;
typedef  scalar_t__ u_long ;
typedef  scalar_t__ u_int ;
struct bpf_insn {int dummy; } ;
struct bpf_d {scalar_t__ bd_hbuf_read; int bd_flags; struct bpf_insn* bd_filter; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ BIOCSETF32 ; 
 scalar_t__ BIOCSETF64 ; 
 int BPF_CLOSING ; 
 scalar_t__ BPF_MAXINSNS ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAIT ; 
 int /*<<< orphan*/  PRINET ; 
 scalar_t__ USER_ADDR_NULL ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpf_mlock ; 
 scalar_t__ FUNC2 (struct bpf_insn*,int) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_d*) ; 

__attribute__((used)) static int
FUNC6(struct bpf_d *d, u_int bf_len, user_addr_t bf_insns,
    u_long cmd)
{
	struct bpf_insn *fcode, *old;
	u_int flen, size;

	while (d->bd_hbuf_read != 0)
		FUNC4((caddr_t)d, bpf_mlock, PRINET, "bpf_reading", NULL);

	if ((d->bd_flags & BPF_CLOSING) != 0)
		return (ENXIO);

	old = d->bd_filter;
	if (bf_insns == USER_ADDR_NULL) {
		if (bf_len != 0)
			return (EINVAL);
		d->bd_filter = NULL;
		FUNC5(d);
		if (old != 0)
			FUNC0((caddr_t)old, M_DEVBUF);
		return (0);
	}
	flen = bf_len;
	if (flen > BPF_MAXINSNS)
		return (EINVAL);

	size = flen * sizeof(struct bpf_insn);
	fcode = (struct bpf_insn *) FUNC1(size, M_DEVBUF, M_WAIT);
#ifdef __APPLE__
	if (fcode == NULL)
		return (ENOBUFS);
#endif
	if (FUNC3(bf_insns, (caddr_t)fcode, size) == 0 &&
	    FUNC2(fcode, (int)flen)) {
		d->bd_filter = fcode;

		if (cmd == BIOCSETF32 || cmd == BIOCSETF64)
			FUNC5(d);

		if (old != 0)
			FUNC0((caddr_t)old, M_DEVBUF);

		return (0);
	}
	FUNC0((caddr_t)fcode, M_DEVBUF);
	return (EINVAL);
}