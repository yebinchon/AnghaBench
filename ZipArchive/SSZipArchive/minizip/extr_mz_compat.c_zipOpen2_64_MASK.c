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
typedef  scalar_t__ zlib_filefunc64_def ;
typedef  int /*<<< orphan*/ * zipFile ;
typedef  int /*<<< orphan*/  mz_stream_vtbl ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/ * FUNC0 (void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 scalar_t__ FUNC2 (void*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (void*,int,char const**) ; 

zipFile FUNC6(const void *path, int append, const char **globalcomment,
    zlib_filefunc64_def *pzlib_filefunc_def)
{
    zipFile zip = NULL;
    int32_t mode = FUNC4(append);
    void *stream = NULL;

    if (pzlib_filefunc_def)
    {
        if (FUNC0(&stream, (mz_stream_vtbl *)*pzlib_filefunc_def) == NULL)
            return NULL;
    }
    else
    {
        if (FUNC3(&stream) == NULL)
            return NULL;
    }

    if (FUNC2(stream, path, mode) != MZ_OK)
    {
        FUNC1(&stream);
        return NULL;
    }

    zip = FUNC5(stream, append, globalcomment);

    if (zip == NULL)
    {
        FUNC1(&stream);
        return NULL;
    }

    return zip;
}