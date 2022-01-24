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
typedef  int /*<<< orphan*/  mode_t ;
typedef  enum vtype { ____Placeholder_vtype } vtype ;

/* Variables and functions */
#define  VBAD 138 
#define  VBLK 137 
#define  VCHR 136 
#define  VCPLX 135 
#define  VDIR 134 
#define  VFIFO 133 
#define  VLNK 132 
#define  VNON 131 
#define  VREG 130 
#define  VSOCK 129 
#define  VSTR 128 
 int FUNC0 (int const,int /*<<< orphan*/ ) ; 

int
FUNC1(enum vtype vtype, mode_t m)
{
	switch (vtype) {
	case VNON:
	case VREG:
	case VDIR:
	case VBLK:
	case VCHR:
	case VLNK:
	case VSOCK:
		return FUNC0(vtype, m);
	case VFIFO:
		return FUNC0(VCHR, m);
	case VBAD:
	case VSTR:
	case VCPLX:
	default:
		return FUNC0(VNON, m);
	}
}