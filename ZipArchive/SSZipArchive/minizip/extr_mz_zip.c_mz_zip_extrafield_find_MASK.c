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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_EXIST_ERROR ; 
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_SEEK_CUR ; 
 scalar_t__ FUNC0 (void*,scalar_t__*) ; 
 scalar_t__ FUNC1 (void*,scalar_t__,int /*<<< orphan*/ ) ; 

int32_t FUNC2(void *stream, uint16_t type, uint16_t *length)
{
    int32_t err = MZ_OK;
    uint16_t field_type = 0;
    uint16_t field_length = 0;

    do
    {
        err = FUNC0(stream, &field_type);
        if (err == MZ_OK)
            err = FUNC0(stream, &field_length);
        if (err != MZ_OK)
            break;

        if (type == field_type)
        {
            if (length != NULL)
                *length = field_length;
            return MZ_OK;
        }

        err = FUNC1(stream, field_length, MZ_SEEK_CUR);
    }
    while (err == MZ_OK);

    return MZ_EXIST_ERROR;
}