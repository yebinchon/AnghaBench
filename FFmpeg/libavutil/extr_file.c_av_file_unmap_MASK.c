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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 

void FUNC3(uint8_t *bufptr, size_t size)
{
    if (!size || !bufptr)
        return;
#if HAVE_MMAP
    munmap(bufptr, size);
#elif HAVE_MAPVIEWOFFILE
    UnmapViewOfFile(bufptr);
#else
    FUNC1(bufptr);
#endif
}