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
typedef  int /*<<< orphan*/  GXFifoObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_PI_CP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  __GXCPInterruptHandler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ _cpgplinked ; 
 int /*<<< orphan*/  _cpufifo ; 
 int /*<<< orphan*/  _gpfifo ; 
 scalar_t__ _gxcpufifoready ; 
 int /*<<< orphan*/  _gxcurrentlwp ; 
 scalar_t__ _gxgpfifoready ; 
 scalar_t__ _gxoverflowsuspend ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5()
{
	FUNC1(IRQ_PI_CP,__GXCPInterruptHandler,NULL);
	FUNC3(FUNC0(IRQ_PI_CP));

	FUNC4(&_cpufifo,0,sizeof(GXFifoObj));
	FUNC4(&_gpfifo,0,sizeof(GXFifoObj));

	_gxcpufifoready = 0;
	_gxgpfifoready = 0;
	_cpgplinked = 0;
	_gxoverflowsuspend = 0;
	_gxcurrentlwp = FUNC2();
}