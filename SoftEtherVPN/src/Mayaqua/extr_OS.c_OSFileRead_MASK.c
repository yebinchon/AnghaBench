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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_2__ {int (* FileRead ) (void*,void*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_1__* os ; 
 int FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 

bool FUNC1(void *pData, void *buf, UINT size)
{
	return os->FileRead(pData, buf, size);
}