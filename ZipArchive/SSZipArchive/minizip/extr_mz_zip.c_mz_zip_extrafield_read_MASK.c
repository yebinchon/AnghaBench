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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ *) ; 

int32_t FUNC1(void *stream, uint16_t *type, uint16_t *length)
{
    int32_t err = MZ_OK;
    if (type == NULL || length == NULL)
        return MZ_PARAM_ERROR;
    err = FUNC0(stream, type);
    if (err == MZ_OK)
        err = FUNC0(stream, length);
    return err;
}