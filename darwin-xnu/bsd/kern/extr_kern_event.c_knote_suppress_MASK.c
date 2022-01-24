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
struct kqueue {int dummy; } ;
struct kqtailq {int dummy; } ;
struct knote {int kn_status; } ;

/* Variables and functions */
 int KN_SUPPRESSED ; 
 int /*<<< orphan*/  FUNC0 (struct kqtailq*,struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kn_tqe ; 
 int /*<<< orphan*/  FUNC1 (struct knote*) ; 
 struct kqueue* FUNC2 (struct knote*) ; 
 int /*<<< orphan*/  FUNC3 (struct kqueue*) ; 
 struct kqtailq* FUNC4 (struct kqueue*,struct knote*) ; 

__attribute__((used)) static void
FUNC5(struct knote *kn)
{
	struct kqtailq *suppressq;
	struct kqueue *kq = FUNC2(kn);

	FUNC3(kq);

	if (kn->kn_status & KN_SUPPRESSED)
		return;

	FUNC1(kn);
	kn->kn_status |= KN_SUPPRESSED;
	suppressq = FUNC4(kq, kn);
	FUNC0(suppressq, kn, kn_tqe);
}