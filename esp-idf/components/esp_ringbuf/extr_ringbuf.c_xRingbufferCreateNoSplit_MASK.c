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
typedef  int /*<<< orphan*/  RingbufHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  RINGBUF_TYPE_NOSPLIT ; 
 size_t FUNC0 (size_t) ; 
 size_t rbHEADER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 

RingbufHandle_t FUNC2(size_t xItemSize, size_t xItemNum)
{
    return FUNC1((FUNC0(xItemSize) + rbHEADER_SIZE) * xItemNum, RINGBUF_TYPE_NOSPLIT);
}