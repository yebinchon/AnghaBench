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
struct vnode {size_t v_type; int v_usecount; int v_writecount; int v_flag; } ;
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 int VBWAIT ; 
 int VNOFLUSH ; 
 int VROOT ; 
 int VSYSTEM ; 
 int VTEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char** typename ; 
 scalar_t__ FUNC2 (struct vnode*) ; 

void
FUNC3(const char *label, struct vnode *vp)
{
	char sbuf[64];

	if (label != NULL)
		FUNC0("%s: ", label);
	FUNC0("type %s, usecount %d, writecount %d",
	       typename[vp->v_type], vp->v_usecount, vp->v_writecount);
	sbuf[0] = '\0';
	if (vp->v_flag & VROOT)
		FUNC1(sbuf, "|VROOT", sizeof(sbuf));
	if (vp->v_flag & VTEXT)
		FUNC1(sbuf, "|VTEXT", sizeof(sbuf));
	if (vp->v_flag & VSYSTEM)
		FUNC1(sbuf, "|VSYSTEM", sizeof(sbuf));
	if (vp->v_flag & VNOFLUSH)
		FUNC1(sbuf, "|VNOFLUSH", sizeof(sbuf));
	if (vp->v_flag & VBWAIT)
		FUNC1(sbuf, "|VBWAIT", sizeof(sbuf));
	if (FUNC2(vp))
		FUNC1(sbuf, "|VALIASED", sizeof(sbuf));
	if (sbuf[0] != '\0')
		FUNC0(" flags (%s)", &sbuf[1]);
}