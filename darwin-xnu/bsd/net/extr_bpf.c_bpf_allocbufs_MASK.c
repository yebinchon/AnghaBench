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
struct bpf_d {scalar_t__ bd_hcnt; scalar_t__ bd_scnt; scalar_t__ bd_hlen; scalar_t__ bd_slen; int /*<<< orphan*/ * bd_fbuf; int /*<<< orphan*/ * bd_sbuf; int /*<<< orphan*/  bd_bufsize; int /*<<< orphan*/ * bd_hbuf; } ;
typedef  void* caddr_t ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct bpf_d *d)
{
	if (d->bd_sbuf != NULL) {
		FUNC0(d->bd_sbuf, M_DEVBUF);
		d->bd_sbuf = NULL;
	}
	if (d->bd_hbuf != NULL) {
		FUNC0(d->bd_hbuf, M_DEVBUF);
		d->bd_hbuf = NULL;
	}
	if (d->bd_fbuf != NULL) {
		FUNC0(d->bd_fbuf, M_DEVBUF);
		d->bd_fbuf = NULL;
	}

	d->bd_fbuf = (caddr_t) FUNC1(d->bd_bufsize, M_DEVBUF, M_WAIT);
	if (d->bd_fbuf == NULL)
		return (ENOBUFS);

	d->bd_sbuf = (caddr_t) FUNC1(d->bd_bufsize, M_DEVBUF, M_WAIT);
	if (d->bd_sbuf == NULL) {
		FUNC0(d->bd_fbuf, M_DEVBUF);
		d->bd_fbuf = NULL;
		return (ENOBUFS);
	}
	d->bd_slen = 0;
	d->bd_hlen = 0;
	d->bd_scnt = 0;
	d->bd_hcnt = 0;
	return (0);
}