#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
struct fileproc {TYPE_1__* f_ops; } ;
struct TYPE_2__ {int (* fo_select ) (struct fileproc*,int,void*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (struct fileproc*,int,void*,int /*<<< orphan*/ ) ; 

int
FUNC1(struct fileproc *fp, int which, void *wql, vfs_context_t ctx)
{
	return((*fp->f_ops->fo_select)(fp, which, wql, ctx));
}