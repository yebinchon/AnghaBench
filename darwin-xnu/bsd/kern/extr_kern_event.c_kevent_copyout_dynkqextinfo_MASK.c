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
typedef  int /*<<< orphan*/  uint32_t ;
struct kqueue {int dummy; } ;
typedef  int /*<<< orphan*/ * proc_t ;
typedef  int /*<<< orphan*/  kqueue_id_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct kqueue* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct kqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct kqueue*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct kqueue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC7(void *proc, kqueue_id_t kq_id, user_addr_t ubuf,
		uint32_t ubufsize, int32_t *nknotes_out)
{
	proc_t p = (proc_t)proc;
	struct kqueue *kq;
	int err;

	FUNC0(p != NULL);

	FUNC1(p);
	kq = FUNC3(p, kq_id);
	if (!kq) {
		FUNC2(p);
		return ESRCH;
	}
	FUNC5(kq);
	FUNC2(p);

	err = FUNC6(p, kq, ubuf, ubufsize, nknotes_out);
	FUNC4(p, kq);
	return err;
}