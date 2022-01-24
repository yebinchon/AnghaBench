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
struct kqworkq {int dummy; } ;
struct kqworkloop {int dummy; } ;
struct kqfile {int dummy; } ;
struct knote {int dummy; } ;

/* Variables and functions */
 void* knote_zone ; 
 int /*<<< orphan*/  kq_lck_attr ; 
 int /*<<< orphan*/  kq_lck_grp ; 
 int /*<<< orphan*/  kq_lck_grp_attr ; 
 void* kqfile_zone ; 
 void* kqworkloop_zone ; 
 void* kqworkq_zone ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int,int,char*) ; 

void
FUNC5(void)
{
	knote_zone = FUNC4(sizeof(struct knote), 8192*sizeof(struct knote),
	                   8192, "knote zone");

	kqfile_zone = FUNC4(sizeof(struct kqfile), 8192*sizeof(struct kqfile),
	                    8192, "kqueue file zone");

	kqworkq_zone = FUNC4(sizeof(struct kqworkq), 8192*sizeof(struct kqworkq),
	                    8192, "kqueue workq zone");

	kqworkloop_zone = FUNC4(sizeof(struct kqworkloop), 8192*sizeof(struct kqworkloop),
	                    8192, "kqueue workloop zone");

	/* allocate kq lock group attribute and group */
	kq_lck_grp_attr = FUNC2();

	kq_lck_grp = FUNC1("kqueue",  kq_lck_grp_attr);

	/* Allocate kq lock attribute */
	kq_lck_attr = FUNC0();

#if CONFIG_MEMORYSTATUS
	/* Initialize the memorystatus list lock */
	memorystatus_kevent_init(kq_lck_grp, kq_lck_attr);
#endif
}