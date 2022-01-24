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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 scalar_t__ FUNC0 (void*,scalar_t__*,int) ; 

int32_t FUNC1(void *stream, uint8_t *value)
{
    int32_t err = MZ_OK;
    uint64_t value64 = 0;

    *value = 0;
    err = FUNC0(stream, &value64, sizeof(uint8_t));
    if (err == MZ_OK)
        *value = (uint8_t)value64;
    return err;
}