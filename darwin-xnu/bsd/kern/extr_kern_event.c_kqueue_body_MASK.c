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
struct kqueue {int dummy; } ;
struct fileproc {int f_flag; struct kqueue* f_data; int /*<<< orphan*/ * f_ops; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  fp_allocfn_t ;

/* Variables and functions */
 int ENOMEM ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  UF_EXCLOSE ; 
 int FUNC0 (struct proc*,struct fileproc**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC1 (struct proc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int,struct fileproc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int,struct fileproc*) ; 
 struct kqueue* FUNC4 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kqueueops ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(struct proc *p, fp_allocfn_t fp_zalloc, void *cra, int32_t *retval)
{
	struct kqueue *kq;
	struct fileproc *fp;
	int fd, error;

	error = FUNC0(p,
	    &fp, &fd, FUNC8(), fp_zalloc, cra);
	if (error) {
		return (error);
	}

	kq = FUNC4(p, 0);
	if (kq == NULL) {
		FUNC3(p, fd, fp);
		return (ENOMEM);
	}

	fp->f_flag = FREAD | FWRITE;
	fp->f_ops = &kqueueops;
	fp->f_data = kq;

	FUNC5(p);
	*FUNC1(p, fd) |= UF_EXCLOSE;
	FUNC7(p, fd, NULL);
	FUNC2(p, fd, fp, 1);
	FUNC6(p);

	*retval = fd;
	return (error);
}