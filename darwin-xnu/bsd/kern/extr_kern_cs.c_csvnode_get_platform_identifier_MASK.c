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
typedef  int /*<<< orphan*/  uint8_t ;
struct vnode {int dummy; } ;
struct cs_blob {TYPE_1__* csb_cd; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_2__ {int /*<<< orphan*/  platform; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ CS_CodeDirectory ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct cs_blob* FUNC1 (struct vnode*,int,int /*<<< orphan*/ ) ; 

uint8_t
FUNC2(struct vnode *vp, off_t offset)
{
	struct cs_blob *csblob;
	const CS_CodeDirectory *code_dir;

	csblob = FUNC1(vp, -1, offset);
	if (csblob == NULL)
		return 0;

	code_dir = csblob->csb_cd;
	if (code_dir == NULL || FUNC0(code_dir->length) < 8)
		return 0;

	return code_dir->platform;
}