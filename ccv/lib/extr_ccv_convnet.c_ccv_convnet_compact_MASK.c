#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int count; TYPE_4__* layers; scalar_t__* denoms; scalar_t__* acts; } ;
typedef  TYPE_1__ ccv_convnet_t ;
struct TYPE_6__ {scalar_t__ reserved; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(ccv_convnet_t* convnet)
{
#ifdef HAVE_CUDA
	cwc_convnet_compact(convnet);
#endif
	int i;
	for (i = 0; i < convnet->count; i++)
	{
		if (convnet->acts[i])
			FUNC2(convnet->acts[i]);
		convnet->acts[i] = 0;
		if (convnet->denoms)
		{
			if (convnet->denoms[i])
				FUNC2(convnet->denoms[i]);
			convnet->denoms[i] = 0;
		}
		if (FUNC0(convnet->layers + i))
		{
			FUNC1(convnet->layers[i].reserved);
			convnet->layers[i].reserved = 0;
		}
	}
}