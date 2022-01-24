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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 size_t AV_INPUT_BUFFER_PADDING_SIZE ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,unsigned int*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

void FUNC3(void *ptr, unsigned int *size, size_t min_size)
{
    uint8_t **p = ptr;
    if (min_size > SIZE_MAX - AV_INPUT_BUFFER_PADDING_SIZE) {
        FUNC0(p);
        *size = 0;
        return;
    }
    if (!FUNC1(p, size, min_size + AV_INPUT_BUFFER_PADDING_SIZE, 1))
        FUNC2(*p + min_size, 0, AV_INPUT_BUFFER_PADDING_SIZE);
}