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
typedef  int /*<<< orphan*/  zlib_filefunc64_def ;
typedef  int /*<<< orphan*/  zipFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

zipFile FUNC2(const void *path, int append)
{
    zlib_filefunc64_def pzlib = FUNC0();
    return FUNC1(path, append, NULL, &pzlib);
}