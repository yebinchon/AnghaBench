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
struct vnop_readdir_args {int a_flags; int* a_numdirent; struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct uio {int dummy; } ;
struct null_mount {int /*<<< orphan*/  nullm_lowerrootvp; int /*<<< orphan*/  nullm_lowerrootvid; struct vnode* nullm_rootvp; } ;
typedef  int off_t ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ERANGE ; 
 struct null_mount* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_ROOT_INO ; 
 scalar_t__ NULL_SECOND_INO ; 
 scalar_t__ NULL_THIRD_INO ; 
 int VNODE_READDIR_EXTENDED ; 
 int VNODE_READDIR_REQSEEKOFF ; 
 int FUNC1 (scalar_t__,char const*,struct uio*) ; 
 int FUNC2 (struct uio*) ; 
 int /*<<< orphan*/  FUNC3 (struct uio*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static int
FUNC9(struct vnop_readdir_args * ap)
{
	struct vnode * vp           = ap->a_vp;
	struct uio * uio            = ap->a_uio;
	struct null_mount * null_mp = FUNC0(FUNC6(vp));
	off_t offset                = FUNC2(uio);
	int error                   = ERANGE;
	int items                   = 0;
	ino_t ino                   = 0;
	const char * name           = NULL;

	if (ap->a_flags & (VNODE_READDIR_EXTENDED | VNODE_READDIR_REQSEEKOFF))
		return (EINVAL);

	if (offset == 0) {
		/* . case */
		if (vp == null_mp->nullm_rootvp) {
			ino = NULL_ROOT_INO;
		} else /* only get here if vp matches nullm_rootvp or nullm_secondvp */
		{
			ino = NULL_SECOND_INO;
		}
		error = FUNC1(ino, ".", uio);
		if (error) {
			goto out;
		}
		offset++;
		items++;
	}
	if (offset == 1) {
		/* .. case */
		/* only get here if vp matches nullm_rootvp or nullm_secondvp */
		ino = NULL_ROOT_INO;

		error = FUNC1(ino, "..", uio);
		if (error) {
			goto out;
		}
		offset++;
		items++;
	}
	if (offset == 2) {
		/* the directory case */
		if (vp == null_mp->nullm_rootvp) {
			ino  = NULL_SECOND_INO;
			name = "d";
		} else /* only get here if vp matches nullm_rootvp or nullm_secondvp */
		{
			ino = NULL_THIRD_INO;
			if (FUNC5(null_mp->nullm_lowerrootvp, null_mp->nullm_lowerrootvid)) {
				/* In this case the lower file system has been ripped out from under us,
				   but we don't want to error out
				   Instead we just want d to look empty. */
				error = 0;
				goto out;
			}
			name = FUNC4(null_mp->nullm_lowerrootvp);
		}
		error = FUNC1(ino, name, uio);

		if (ino == NULL_THIRD_INO) {
			FUNC8(name);
			FUNC7(null_mp->nullm_lowerrootvp);
		}

		if (error) {
			goto out;
		}
		offset++;
		items++;
	}

out:
	if (error == EMSGSIZE) {
		error = 0; /* return success if we ran out of space, but we wanted to make
		              sure that we didn't update offset and items incorrectly */
	}
	FUNC3(uio, offset);
	if (ap->a_numdirent) {
		*ap->a_numdirent = items;
	}
	return error;
}