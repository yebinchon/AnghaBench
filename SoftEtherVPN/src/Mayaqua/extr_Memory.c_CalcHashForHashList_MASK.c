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
typedef  int UINT ;
struct TYPE_3__ {int (* GetHashProc ) (void*) ;int Size; } ;
typedef  TYPE_1__ HASH_LIST ;

/* Variables and functions */
 int FUNC0 (void*) ; 

UINT FUNC1(HASH_LIST *h, void *p)
{
	UINT r;
	// Validate arguments
	if (h == NULL || p == NULL)
	{
		return 0;
	}

	r = h->GetHashProc(p);

	return (r % h->Size);
}