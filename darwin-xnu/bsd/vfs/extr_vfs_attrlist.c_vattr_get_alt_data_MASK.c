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
typedef  scalar_t__ vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode_attr {int /*<<< orphan*/  va_fileid; int /*<<< orphan*/  va_parentid; } ;
struct attrlist {int commonattr; int fileattr; int dirattr; } ;

/* Variables and functions */
 int ATTR_CMN_FILEID ; 
 int ATTR_CMN_NAME ; 
 int ATTR_CMN_OBJID ; 
 int ATTR_CMN_OBJPERMANENTID ; 
 int ATTR_CMN_PARENTID ; 
 int ATTR_CMN_PAROBJID ; 
 int ATTR_CMN_SCRIPT ; 
 int ATTR_DIR_LINKCOUNT ; 
 int ATTR_FILE_DATAALLOCSIZE ; 
 int ATTR_FILE_DATALENGTH ; 
 scalar_t__ NULLVP ; 
 int /*<<< orphan*/  FUNC0 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*) ; 
 scalar_t__ FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  va_data_alloc ; 
 int /*<<< orphan*/  va_data_size ; 
 int /*<<< orphan*/  va_dirlinkcount ; 
 int /*<<< orphan*/  va_encoding ; 
 int /*<<< orphan*/  va_fileid ; 
 int /*<<< orphan*/  va_linkid ; 
 int /*<<< orphan*/  va_name ; 
 int /*<<< orphan*/  va_parentid ; 
 scalar_t__ FUNC6 (scalar_t__,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void
FUNC9(vnode_t vp, struct attrlist *alp, struct vnode_attr *vap,
    int return_valid, int is_bulk, vfs_context_t ctx)
{
	/*
	 * There are a couple of special cases.
	 * If we are after object IDs, we can make do with va_fileid.
	 */
	if ((alp->commonattr &
	    (ATTR_CMN_OBJID | ATTR_CMN_OBJPERMANENTID | ATTR_CMN_FILEID)) &&
	    !FUNC2(vap, va_linkid)) {
		/* forget we wanted this */
		FUNC0(vap, va_linkid);
	}
	
	/*
	 * Many filesystems don't know their parent object id.
	 * If necessary, attempt to derive it from the vnode.
	 */
	if ((alp->commonattr & (ATTR_CMN_PAROBJID | ATTR_CMN_PARENTID)) &&
	    !FUNC2(vap, va_parentid) && vp && !is_bulk) {
		vnode_t	dvp;

		if ((dvp = FUNC7(vp)) != NULLVP) {
			struct vnode_attr lva;

			FUNC1(&lva);
			FUNC5(&lva, va_fileid);
			if (FUNC6(dvp, &lva, ctx) == 0 &&
			    FUNC2(vap, va_fileid)) {
				vap->va_parentid = lva.va_fileid;
				FUNC4(vap, va_parentid);
			}
			FUNC8(dvp);
		}
	}
	/*
	 * And we can report datasize/alloc from total.
	 */
	if ((alp->fileattr & ATTR_FILE_DATALENGTH) &&
	    !FUNC2(vap, va_data_size)) {
		FUNC0(vap, va_data_size);
	}

	if ((alp->fileattr & ATTR_FILE_DATAALLOCSIZE) &&
	    !FUNC2(vap, va_data_alloc)) {
		FUNC0(vap, va_data_alloc);
	}

	/*
	 * If we don't have an encoding, go with UTF-8
	 */
	if ((alp->commonattr & ATTR_CMN_SCRIPT) &&
	    !FUNC2(vap, va_encoding) && !return_valid) {
		FUNC3(vap, va_encoding,
		    0x7e /* kTextEncodingMacUnicode */);
	}

	/*
	 * If we don't have a name, we'll get one from the vnode or
	 * mount point.
	 */
	if ((alp->commonattr & ATTR_CMN_NAME) &&
	    !FUNC2(vap, va_name)) {
		FUNC0(vap, va_name);
	}

	/* If va_dirlinkcount isn't supported use a default of 1. */
	if ((alp->dirattr & ATTR_DIR_LINKCOUNT) &&
	    !FUNC2(vap, va_dirlinkcount)) {
		FUNC3(vap, va_dirlinkcount, 1);
	}
}