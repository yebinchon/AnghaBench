#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VH ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {TYPE_1__* PacketAdapter; } ;
struct TYPE_4__ {scalar_t__ Param; } ;
typedef  TYPE_2__ SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void**) ; 

UINT FUNC1(SESSION *s, void **data)
{
	VH *v;
	// Validate arguments
	if (s == NULL || (v = (VH *)s->PacketAdapter->Param) == NULL)
	{
		return INFINITE;
	}

	return FUNC0(v, data);
}