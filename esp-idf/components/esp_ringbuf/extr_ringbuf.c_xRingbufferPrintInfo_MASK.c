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
struct TYPE_4__ {int xSize; int pucRead; int pucHead; int pucFree; int pucWrite; int pucAcquire; } ;
typedef  TYPE_1__ Ringbuffer_t ;
typedef  scalar_t__ RingbufHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int,int,int) ; 
 int FUNC2 (TYPE_1__*) ; 

void FUNC3(RingbufHandle_t xRingbuffer)
{
    Ringbuffer_t *pxRingbuffer = (Ringbuffer_t *)xRingbuffer;
    FUNC0(pxRingbuffer);
    FUNC1("Rb size:%d\tfree: %d\trptr: %d\tfreeptr: %d\twptr: %d, aptr: %d\n",
           pxRingbuffer->xSize, FUNC2(pxRingbuffer),
           pxRingbuffer->pucRead - pxRingbuffer->pucHead,
           pxRingbuffer->pucFree - pxRingbuffer->pucHead,
           pxRingbuffer->pucWrite - pxRingbuffer->pucHead,
           pxRingbuffer->pucAcquire - pxRingbuffer->pucHead);
}