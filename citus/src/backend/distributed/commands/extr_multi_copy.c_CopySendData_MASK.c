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
struct TYPE_3__ {int /*<<< orphan*/  fe_msgbuf; } ;
typedef  TYPE_1__* CopyOutState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,int) ; 

__attribute__((used)) static void
FUNC1(CopyOutState outputState, const void *databuf, int datasize)
{
	FUNC0(outputState->fe_msgbuf, databuf, datasize);
}