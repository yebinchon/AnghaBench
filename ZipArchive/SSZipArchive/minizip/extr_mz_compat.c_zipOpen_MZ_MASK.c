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
typedef  int /*<<< orphan*/ * zipFile ;
struct TYPE_2__ {void* stream; void* handle; } ;
typedef  TYPE_1__ mz_compat ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const**) ; 
 scalar_t__ FUNC4 (void*,void*,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 

zipFile FUNC6(void *stream, int append, const char **globalcomment)
{
    mz_compat *compat = NULL;
    int32_t err = MZ_OK;
    int32_t mode = FUNC5(append);
    void *handle = NULL;

    FUNC1(&handle);
    err = FUNC4(handle, stream, mode);

    if (err != MZ_OK)
    {
        FUNC2(&handle);
        return NULL;
    }

    if (globalcomment != NULL)
        FUNC3(handle, globalcomment);

    compat = (mz_compat *)FUNC0(sizeof(mz_compat));
    if (compat != NULL)
    {
        compat->handle = handle;
        compat->stream = stream;
    }
    else
    {
        FUNC2(&handle);
    }

    return (zipFile)compat;
}