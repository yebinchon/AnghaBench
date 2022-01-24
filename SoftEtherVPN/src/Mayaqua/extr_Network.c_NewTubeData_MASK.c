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
typedef  scalar_t__ UINT ;
struct TYPE_3__ {void* Header; scalar_t__ HeaderSize; scalar_t__ DataSize; void* Data; } ;
typedef  TYPE_1__ TUBEDATA ;

/* Variables and functions */
 void* FUNC0 (void*,scalar_t__) ; 
 void* FUNC1 (scalar_t__) ; 

TUBEDATA *FUNC2(void *data, UINT size, void *header, UINT header_size)
{
	TUBEDATA *d;
	// Validate arguments
	if (size == 0 || data == NULL)
	{
		return NULL;
	}

	d = FUNC1(sizeof(TUBEDATA));

	d->Data = FUNC0(data, size);
	d->DataSize = size;
	if (header != NULL)
	{
		d->Header = FUNC0(header, header_size);
		d->HeaderSize = header_size;
	}
	else
	{
		d->Header = FUNC1(header_size);
	}

	return d;
}