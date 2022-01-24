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
typedef  int u32 ;
struct TYPE_2__ {int peZMode; int peCMode0; int peCntrl; int dispCopyTL; int dispCopyWH; int dispCopyDst; int dispCopyCntrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* __gx ; 

void FUNC4(void *dest,u8 clear)
{
	u8 clflag;
	u32 val;

	if(clear) {
		val= (__gx->peZMode&~0xf)|0xf;
		FUNC0(val);
		val = (__gx->peCMode0&~0x3);
		FUNC0(val);
	}

	clflag = 0;
	if(clear || (__gx->peCntrl&0x7)==0x0003) {
		if(__gx->peCntrl&0x40) {
			clflag = 1;
			val = (__gx->peCntrl&~0x40);
			FUNC0(val);
		}
	}

	FUNC0(__gx->dispCopyTL);  // set source top
	FUNC0(__gx->dispCopyWH);

	FUNC0(__gx->dispCopyDst);

	val = 0x4b000000|(FUNC3(FUNC1(dest),5,24));
	FUNC0(val);

	__gx->dispCopyCntrl = (__gx->dispCopyCntrl&~0x800)|(FUNC2(clear,11,1));
	__gx->dispCopyCntrl = (__gx->dispCopyCntrl&~0x4000)|0x4000;
	__gx->dispCopyCntrl = (__gx->dispCopyCntrl&~0xff000000)|(FUNC2(0x52,24,8));

	FUNC0(__gx->dispCopyCntrl);

	if(clear) {
		FUNC0(__gx->peZMode);
		FUNC0(__gx->peCMode0);
	}
	if(clflag) FUNC0(__gx->peCntrl);
}