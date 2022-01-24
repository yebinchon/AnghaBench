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
typedef  char const* int32_t ;

/* Variables and functions */
 char const* MZ_OK ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 

int32_t FUNC1(void *stream, const char *path, int32_t mode)
{
    FUNC0(stream);
    FUNC0(path);
    FUNC0(mode);

    return MZ_OK;
}