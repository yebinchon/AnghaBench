#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * unzFile ;
struct TYPE_2__ {void* handle; void* stream; } ;
typedef  TYPE_1__ mz_compat ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_OPEN_MODE_READ ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*,void*,int /*<<< orphan*/ ) ; 

unzFile FUNC5(void *stream)
{
    mz_compat *compat = NULL;
    int32_t err = MZ_OK;
    void *handle = NULL;

    FUNC1(&handle);
    err = FUNC4(handle, stream, MZ_OPEN_MODE_READ);

    if (err != MZ_OK)
    {
        FUNC2(&handle);
        return NULL;
    }

    compat = (mz_compat *)FUNC0(sizeof(mz_compat));
    if (compat != NULL)
    {
        compat->handle = handle;
        compat->stream = stream;

        FUNC3(compat->handle);
    }
    else
    {
        FUNC2(&handle);
    }

    return (unzFile)compat;
}