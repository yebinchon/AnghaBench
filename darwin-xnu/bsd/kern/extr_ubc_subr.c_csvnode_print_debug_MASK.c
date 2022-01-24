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
struct vnode {struct ubc_info* v_ubcinfo; } ;
struct ubc_info {struct cs_blob* cs_blobs; } ;
struct cs_blob {char* csb_teamid; scalar_t__ csb_platform_path; scalar_t__ csb_platform_binary; int /*<<< orphan*/  csb_flags; scalar_t__ csb_end_offset; scalar_t__ csb_start_offset; struct cs_blob* csb_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 

void
FUNC6(struct vnode *vp)
{
	const char	*name = NULL;
	struct ubc_info	*uip;
	struct cs_blob *blob;

	name = FUNC2(vp);
	if (name) {
		FUNC1("csvnode: name: %s\n", name);
		FUNC4(name);
	}

	FUNC3(vp);

	if (! FUNC0(vp)) {
		blob = NULL;
		goto out;
	}

	uip = vp->v_ubcinfo;
	for (blob = uip->cs_blobs; blob != NULL; blob = blob->csb_next) {
		FUNC1("csvnode: range: %lu -> %lu flags: 0x%08x platform: %s path: %s team: %s\n",
		       (unsigned long)blob->csb_start_offset,
		       (unsigned long)blob->csb_end_offset,
		       blob->csb_flags,
		       blob->csb_platform_binary ? "yes" : "no",
		       blob->csb_platform_path ? "yes" : "no",
		       blob->csb_teamid ? blob->csb_teamid : "<NO-TEAM>");
	}

out:
	FUNC5(vp);

}