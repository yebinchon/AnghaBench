#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnop_select_args {int a_which; int /*<<< orphan*/  a_context; int /*<<< orphan*/  a_wql; TYPE_2__* a_vp; } ;
struct fileproc {struct fileglob* f_fglob; } ;
struct fileglob {void* fg_data; } ;
typedef  void* caddr_t ;
struct TYPE_4__ {TYPE_1__* v_fifoinfo; } ;
struct TYPE_3__ {scalar_t__ fi_writesock; scalar_t__ fi_readsock; } ;

/* Variables and functions */
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct fileproc*,int) ; 
 int FUNC1 (struct fileproc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct vnop_select_args *ap)
{
	struct fileproc filetmp;
	struct fileglob filefg;
	int ready;

	FUNC0(&filetmp, sizeof(struct fileproc));
	filetmp.f_fglob = &filefg;
	if (ap->a_which & FREAD) {
		filetmp.f_fglob->fg_data = (caddr_t)ap->a_vp->v_fifoinfo->fi_readsock;
		ready = FUNC1(&filetmp, ap->a_which, ap->a_wql, ap->a_context);
		if (ready)
			return (ready);
	}
	if (ap->a_which & FWRITE) {
		filetmp.f_fglob->fg_data = (caddr_t)ap->a_vp->v_fifoinfo->fi_writesock;
		ready = FUNC1(&filetmp, ap->a_which, ap->a_wql, ap->a_context);
		if (ready)
			return (ready);
	}
	return (0);
}