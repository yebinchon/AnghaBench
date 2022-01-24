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
typedef  scalar_t__ uint32_t ;
struct fdt_node_header {int /*<<< orphan*/  name; void* tag; } ;
typedef  void* fdt32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FDT_BEGIN_NODE ; 
 int /*<<< orphan*/  FDT_END_NODE ; 
 int FDT_ERR_EXISTS ; 
 int FDT_ERR_NOTFOUND ; 
 scalar_t__ FDT_NOP ; 
 scalar_t__ FDT_PROP ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (int) ; 
 int FDT_TAGSIZE ; 
 struct fdt_node_header* FUNC2 (void*,int) ; 
 int FUNC3 (void*,struct fdt_node_header*,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (void*,int,int*) ; 
 int FUNC6 (void*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC9(void *fdt, int parentoffset,
			    const char *name, int namelen)
{
	struct fdt_node_header *nh;
	int offset, nextoffset;
	int nodelen;
	int err;
	uint32_t tag;
	fdt32_t *endtag;

	FUNC0(fdt);

	offset = FUNC6(fdt, parentoffset, name, namelen);
	if (offset >= 0)
		return -FDT_ERR_EXISTS;
	else if (offset != -FDT_ERR_NOTFOUND)
		return offset;

	/* Try to place the new node after the parent's properties */
	FUNC5(fdt, parentoffset, &nextoffset); /* skip the BEGIN_NODE */
	do {
		offset = nextoffset;
		tag = FUNC5(fdt, offset, &nextoffset);
	} while ((tag == FDT_PROP) || (tag == FDT_NOP));

	nh = FUNC2(fdt, offset);
	nodelen = sizeof(*nh) + FUNC1(namelen+1) + FDT_TAGSIZE;

	err = FUNC3(fdt, nh, 0, nodelen);
	if (err)
		return err;

	nh->tag = FUNC4(FDT_BEGIN_NODE);
	FUNC8(nh->name, 0, FUNC1(namelen+1));
	FUNC7(nh->name, name, namelen);
	endtag = (fdt32_t *)((char *)nh + nodelen - FDT_TAGSIZE);
	*endtag = FUNC4(FDT_END_NODE);

	return offset;
}