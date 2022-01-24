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

/* Variables and functions */
 int FUNC0 (char const*,char const*) ; 
 char* FUNC1 (char const*,char) ; 

int FUNC2(const char *filename, const char *extensions)
{
    const char *ext;

    if (!filename)
        return 0;

    ext = FUNC1(filename, '.');
    if (ext)
        return FUNC0(ext + 1, extensions);
    return 0;
}