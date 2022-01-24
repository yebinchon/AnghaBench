#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vfs_context_t ;
struct vfs_context {int dummy; } ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_4__ {int /*<<< orphan*/  vc_ucred; int /*<<< orphan*/  vc_thread; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

vfs_context_t
FUNC5(vfs_context_t ctx)
{
	vfs_context_t newcontext;

	newcontext = (vfs_context_t)FUNC2(sizeof(struct vfs_context));

	if (newcontext) {
		kauth_cred_t safecred;
		if (ctx) {
			newcontext->vc_thread = ctx->vc_thread;
			safecred = ctx->vc_ucred;
		} else {
			newcontext->vc_thread = FUNC1();
			safecred = FUNC3();
		}
		if (FUNC0(safecred))
			FUNC4(safecred);
		newcontext->vc_ucred = safecred;
		return(newcontext);
	}
	return(NULL);	
}