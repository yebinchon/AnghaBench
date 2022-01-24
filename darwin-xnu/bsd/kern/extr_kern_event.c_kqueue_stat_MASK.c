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
struct user64_kevent {int dummy; } ;
struct user32_kevent {int dummy; } ;
struct stat64 {int st_blksize; void* st_mode; int /*<<< orphan*/  st_size; } ;
struct stat {int st_blksize; void* st_mode; int /*<<< orphan*/  st_size; } ;
struct kqueue {int kq_state; int /*<<< orphan*/  kq_count; } ;
struct kevent_qos_s {int dummy; } ;
struct kevent64_s {int dummy; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int KQ_KEV64 ; 
 int KQ_KEV_QOS ; 
 int KQ_WORKQ ; 
 void* S_IFIFO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC4 (struct kqueue*) ; 

int
FUNC5(struct kqueue *kq, void *ub, int isstat64, proc_t p)
{
	FUNC1((kq->kq_state & KQ_WORKQ) == 0);

	FUNC3(kq);
	if (isstat64 != 0) {
		struct stat64 *sb64 = (struct stat64 *)ub;

		FUNC2((void *)sb64, sizeof(*sb64));
		sb64->st_size = kq->kq_count;
		if (kq->kq_state & KQ_KEV_QOS)
			sb64->st_blksize = sizeof(struct kevent_qos_s);
		else if (kq->kq_state & KQ_KEV64)
			sb64->st_blksize = sizeof(struct kevent64_s);
		else if (FUNC0(p))
			sb64->st_blksize = sizeof(struct user64_kevent);
		else
			sb64->st_blksize = sizeof(struct user32_kevent);
		sb64->st_mode = S_IFIFO;
	} else {
		struct stat *sb = (struct stat *)ub;

		FUNC2((void *)sb, sizeof(*sb));
		sb->st_size = kq->kq_count;
		if (kq->kq_state & KQ_KEV_QOS)
			sb->st_blksize = sizeof(struct kevent_qos_s);
		else if (kq->kq_state & KQ_KEV64)
			sb->st_blksize = sizeof(struct kevent64_s);
		else if (FUNC0(p))
			sb->st_blksize = sizeof(struct user64_kevent);
		else
			sb->st_blksize = sizeof(struct user32_kevent);
		sb->st_mode = S_IFIFO;
	}
	FUNC4(kq);
	return (0);
}