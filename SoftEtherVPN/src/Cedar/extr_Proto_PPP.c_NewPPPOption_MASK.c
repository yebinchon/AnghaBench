#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  DataSize; int /*<<< orphan*/  Data; int /*<<< orphan*/  Type; } ;
typedef  TYPE_1__ PPP_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 

PPP_OPTION *FUNC2(UCHAR type, void *data, UINT size)
{
	PPP_OPTION *o;
	// Validate arguments
	if (size != 0 && data == NULL)
	{
		return NULL;
	}

	o = FUNC1(sizeof(PPP_OPTION));

	o->Type = type;
	FUNC0(o->Data, data, size);
	o->DataSize = size;

	return o;
}