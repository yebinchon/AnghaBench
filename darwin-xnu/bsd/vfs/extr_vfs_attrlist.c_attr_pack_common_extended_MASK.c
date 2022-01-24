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
typedef  int /*<<< orphan*/  uint64_t ;
struct vnode_attr {int /*<<< orphan*/  va_fileid; int /*<<< orphan*/  va_linkid; int /*<<< orphan*/  va_private_size; } ;
struct vnode {int dummy; } ;
struct attrlist {int forkattr; } ;
struct TYPE_2__ {int forkattr; } ;
struct _attrlist_buf {TYPE_1__ actual; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int ATTR_CMNEXT_LINKID ; 
 int ATTR_CMNEXT_PRIVATESIZE ; 
 int ATTR_CMNEXT_RELPATH ; 
 int /*<<< orphan*/  FUNC0 (struct _attrlist_buf,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct _attrlist_buf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  va_linkid ; 
 int /*<<< orphan*/  va_private_size ; 

__attribute__((used)) static errno_t
FUNC3(struct vnode *vp, struct attrlist *alp,
		struct _attrlist_buf *abp, const char *relpathptr, ssize_t relpathlen,
		struct vnode_attr *vap, int return_valid, int pack_invalid)
{
	if (vp && (alp->forkattr & ATTR_CMNEXT_RELPATH)) {
		FUNC2(abp, relpathptr, relpathlen);
		abp->actual.forkattr |= ATTR_CMNEXT_RELPATH;
	}

	if (alp->forkattr & ATTR_CMNEXT_PRIVATESIZE) {
		if (FUNC1(vap, va_private_size)) {
			FUNC0((*abp), vap->va_private_size);
			abp->actual.forkattr |= ATTR_CMNEXT_PRIVATESIZE;
		} else if (!return_valid || pack_invalid) {
			uint64_t zero_val = 0;
			FUNC0((*abp), zero_val);
		}
	}

	if (alp->forkattr & ATTR_CMNEXT_LINKID) {
		uint64_t linkid;

		if (FUNC1(vap, va_linkid))
			linkid = vap->va_linkid;
		else
			linkid = vap->va_fileid;

		FUNC0((*abp), linkid);
		abp->actual.forkattr |= ATTR_CMNEXT_LINKID;
	}

	return 0;
}