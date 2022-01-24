#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  rbfbb; int /*<<< orphan*/  rtfbb; int /*<<< orphan*/  bfbb; int /*<<< orphan*/  tfbb; void* bufAddr; } ;

/* Variables and functions */
 TYPE_1__ HorVer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int fbSet ; 

void FUNC3(void *fb)
{
	u32 level;
	FUNC0(level);
	fbSet = 1;
	HorVer.bufAddr = fb;
	FUNC2(&HorVer,&HorVer.tfbb,&HorVer.bfbb,&HorVer.rtfbb,&HorVer.rbfbb);
	FUNC1(level);
}