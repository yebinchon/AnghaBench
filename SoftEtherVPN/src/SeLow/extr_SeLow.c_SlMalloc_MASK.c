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
typedef  int UINT ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,int,char) ; 

void *FUNC2(UINT size)
{
	NDIS_STATUS r;
	void *p;
	if (size == 0)
	{
		size = 1;
	}

	// Allocate the non-paged memory
	r = FUNC1(&p, size, 'SETH');

	if (FUNC0(r))
	{
		return NULL;
	}

	return p;
}