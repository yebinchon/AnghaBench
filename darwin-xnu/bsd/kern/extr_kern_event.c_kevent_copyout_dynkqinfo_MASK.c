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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int uint32_t ;
struct kqueue_info {int dummy; } ;
struct kqueue_dyninfo {int /*<<< orphan*/  kqdi_info; } ;
struct kqueue {int dummy; } ;
typedef  int /*<<< orphan*/ * proc_t ;
typedef  int /*<<< orphan*/  kqueue_id_t ;
typedef  int int32_t ;

/* Variables and functions */
 int ENOBUFS ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kqueue_dyninfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct kqueue*,struct kqueue_dyninfo*) ; 
 int FUNC3 (struct kqueue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct kqueue* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct kqueue*) ; 
 int /*<<< orphan*/  FUNC8 (struct kqueue*) ; 

int
FUNC9(void *proc, kqueue_id_t kq_id, user_addr_t ubuf,
		uint32_t ubufsize, int32_t *size_out)
{
	proc_t p = (proc_t)proc;
	struct kqueue *kq;
	int err = 0;
	struct kqueue_dyninfo kqdi = { };

	FUNC0(p != NULL);

	if (ubufsize < sizeof(struct kqueue_info)) {
		return ENOBUFS;
	}

	FUNC4(p);
	kq = FUNC6(p, kq_id);
	if (!kq) {
		FUNC5(p);
		return ESRCH;
	}
	FUNC8(kq);
	FUNC5(p);

	/*
	 * backward compatibility: allow the argument to this call to only be
	 * a struct kqueue_info
	 */
	if (ubufsize >= sizeof(struct kqueue_dyninfo)) {
		ubufsize = sizeof(struct kqueue_dyninfo);
		err = FUNC2(kq, &kqdi);
	} else {
		ubufsize = sizeof(struct kqueue_info);
		err = FUNC3(kq, &kqdi.kqdi_info);
	}
	if (err == 0 && (err = FUNC1(&kqdi, ubuf, ubufsize)) == 0) {
		*size_out = ubufsize;
	}
	FUNC7(p, kq);
	return err;
}