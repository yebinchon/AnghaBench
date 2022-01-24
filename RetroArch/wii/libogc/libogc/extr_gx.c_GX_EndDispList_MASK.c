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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ gxFifoUnlinked; scalar_t__ saveDLctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STRUCT_REGDEF_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* __gx ; 
 int /*<<< orphan*/  __gxregs ; 
 int /*<<< orphan*/  _gx_dl_fifoobj ; 
 int /*<<< orphan*/  _gx_old_cpufifo ; 
 int /*<<< orphan*/  _gx_saved_data ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u32 FUNC7()
{
	u32 level;
	u8 wrap = 0;

	FUNC0(&_gx_dl_fifoobj);
	FUNC3(&_gx_old_cpufifo);

	if(__gx->saveDLctx) {
		FUNC4(level);
		FUNC6(__gxregs,_gx_saved_data,STRUCT_REGDEF_SIZE);
		FUNC5(level);
	}

	__gx->gxFifoUnlinked = 0;

	wrap = FUNC2(&_gx_dl_fifoobj);
	if(wrap) return 0;

	return FUNC1(&_gx_dl_fifoobj);
}