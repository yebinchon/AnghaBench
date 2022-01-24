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
typedef  int U32 ;

/* Variables and functions */
 int FUNC0 (void const*) ; 
 size_t ZSTD_FRAMEIDSIZE ; 
 int const ZSTD_MAGICNUMBER ; 
 int const ZSTD_MAGIC_SKIPPABLE_MASK ; 
 int const ZSTD_MAGIC_SKIPPABLE_START ; 
 scalar_t__ FUNC1 (void const*,size_t) ; 

unsigned FUNC2(const void* buffer, size_t size)
{
    if (size < ZSTD_FRAMEIDSIZE) return 0;
    {   U32 const magic = FUNC0(buffer);
        if (magic == ZSTD_MAGICNUMBER) return 1;
        if ((magic & ZSTD_MAGIC_SKIPPABLE_MASK) == ZSTD_MAGIC_SKIPPABLE_START) return 1;
    }
#if defined(ZSTD_LEGACY_SUPPORT) && (ZSTD_LEGACY_SUPPORT >= 1)
    if (ZSTD_isLegacy(buffer, size)) return 1;
#endif
    return 0;
}