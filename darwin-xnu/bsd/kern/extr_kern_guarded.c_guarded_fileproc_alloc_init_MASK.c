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
struct TYPE_2__ {int /*<<< orphan*/  f_flags; } ;
struct guarded_fileproc {int /*<<< orphan*/  gf_attrs; int /*<<< orphan*/  gf_guard; int /*<<< orphan*/  gf_magic; TYPE_1__ gf_fileproc; } ;
struct gfp_crarg {int /*<<< orphan*/  gca_attrs; int /*<<< orphan*/  gca_guard; } ;
struct fileproc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTYPE_GUARDED ; 
 struct fileproc* FUNC0 (struct guarded_fileproc*) ; 
 int /*<<< orphan*/  GUARDED_FILEPROC_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (struct guarded_fileproc*,int) ; 
 struct guarded_fileproc* FUNC2 (int) ; 

__attribute__((used)) static struct fileproc *
FUNC3(void *crarg)
{
	struct gfp_crarg *aarg = crarg;
	struct guarded_fileproc *gfp;

	if ((gfp = FUNC2(sizeof (*gfp))) == NULL)
		return (NULL);

	FUNC1(gfp, sizeof (*gfp));
	gfp->gf_fileproc.f_flags = FTYPE_GUARDED;
	gfp->gf_magic = GUARDED_FILEPROC_MAGIC;
	gfp->gf_guard = aarg->gca_guard;
	gfp->gf_attrs = aarg->gca_attrs;

	return (FUNC0(gfp));
}