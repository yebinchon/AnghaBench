#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/ * vfs_context_t ;
typedef  scalar_t__ uint64_t ;
struct vnode_attr {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_9__ {int /*<<< orphan*/  v_flag; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FIOPINSWAP ; 
 int /*<<< orphan*/  IO_NOZEROFILL ; 
 int /*<<< orphan*/  PROTECTION_CLASS_C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,struct vnode_attr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VSWAP ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  va_dataprotect_class ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

int
FUNC12(vnode_t vp, uint64_t *size, boolean_t *pin)
{
	int		error = 0;
	uint64_t	file_size = 0;
	vfs_context_t	ctx = NULL;
#if CONFIG_FREEZE
	struct vnode_attr va;
#endif /* CONFIG_FREEZE */

	ctx = FUNC7();

	error = FUNC9(vp, *size, IO_NOZEROFILL, ctx);

	if (error) {
		FUNC6("vnode_setsize for swap files failed: %d\n", error);
		goto done;
	}

	error = FUNC10(vp, (off_t*) &file_size, ctx);

	if (error) {
		FUNC6("vnode_size (new file) for swap file failed: %d\n", error);
		goto done;
	}	
	FUNC5(file_size == *size);
	
	if (pin != NULL && *pin != FALSE) {
		error = FUNC3(vp, FIOPINSWAP, NULL, 0, ctx);

		if (error) {
			FUNC6("pin for swap files failed: %d,  file_size = %lld\n", error, file_size);
			/* this is not fatal, carry on with files wherever they landed */
			*pin = FALSE;
			error = 0;
		}
	}

	FUNC8(vp);
	FUNC0(vp->v_flag, VSWAP);
	FUNC11(vp);

#if CONFIG_FREEZE
	VATTR_INIT(&va);
	VATTR_SET(&va, va_dataprotect_class, PROTECTION_CLASS_C);
	error = VNOP_SETATTR(vp, &va, ctx);

	if (error) {
		printf("setattr PROTECTION_CLASS_C for swap file failed: %d\n", error);
		goto done;
	}
#endif /* CONFIG_FREEZE */

done:
	return error;
}