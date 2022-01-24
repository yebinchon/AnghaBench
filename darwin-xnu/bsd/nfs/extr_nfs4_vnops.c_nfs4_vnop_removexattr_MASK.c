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
struct vnop_removexattr_args {int /*<<< orphan*/  a_context; int /*<<< orphan*/  a_name; int /*<<< orphan*/  a_vp; } ;
struct TYPE_2__ {int nfsa_flags; } ;
struct nfsmount {TYPE_1__ nm_fsattr; } ;

/* Variables and functions */
 int ENOATTR ; 
 int ENOENT ; 
 int ENOTSUP ; 
 int ENXIO ; 
 int NFS_FSFLAG_NAMED_ATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nfsmount*) ; 

int
FUNC4(
	struct vnop_removexattr_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_vp;
		const char * a_name;
		int a_options;
		vfs_context_t a_context;
	} */ *ap)
{
	struct nfsmount *nmp = FUNC1(ap->a_vp);
	int error;

	if (FUNC3(nmp))
		return (ENXIO);
	if (!(nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_NAMED_ATTR))
		return (ENOTSUP);

	error = FUNC2(FUNC0(ap->a_vp), NULL, ap->a_name, ap->a_context);
	if (error == ENOENT)
		error = ENOATTR;
	return (error);
}