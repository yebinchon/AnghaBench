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
typedef  int u8 ;
struct TYPE_2__ {int* tevRasOrder; int dirtyState; } ;

/* Variables and functions */
#define  GX_INDTEXSTAGE0 131 
#define  GX_INDTEXSTAGE1 130 
#define  GX_INDTEXSTAGE2 129 
#define  GX_INDTEXSTAGE3 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 TYPE_1__* __gx ; 

void FUNC2(u8 indtexstage,u8 texcoord,u8 texmap)
{
	switch(indtexstage) {
		case GX_INDTEXSTAGE0:
			__gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0x7)|(texmap&0x7);
			__gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0x38)|(FUNC1(texcoord,3,3));
			break;
		case GX_INDTEXSTAGE1:
			__gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0x1C0)|(FUNC1(texmap,6,3));
			__gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0xE00)|(FUNC1(texcoord,9,3));
			break;
		case GX_INDTEXSTAGE2:
			__gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0x7000)|(FUNC1(texmap,12,3));
			__gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0x38000)|(FUNC1(texcoord,15,3));
			break;
		case GX_INDTEXSTAGE3:
			__gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0x1C0000)|(FUNC1(texmap,18,3));
			__gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0xE00000)|(FUNC1(texcoord,21,3));
			break;
	}
	FUNC0(__gx->tevRasOrder[2]);
	__gx->dirtyState |= 0x0003;
}