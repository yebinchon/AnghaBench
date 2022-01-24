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
typedef  int /*<<< orphan*/  scratchBuffer ;
typedef  int /*<<< orphan*/  fseWkspMax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSE_MAX_SYMBOL_VALUE ; 
 unsigned int FSE_MAX_TABLELOG ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (void*,size_t,void const*,size_t,unsigned int,unsigned int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  tableLog_tooLarge ; 

size_t FUNC4 (void* dst, size_t dstCapacity, const void* src, size_t srcSize, unsigned maxSymbolValue, unsigned tableLog)
{
    fseWkspMax_t scratchBuffer;
    FUNC0(sizeof(scratchBuffer) >= FUNC2(FSE_MAX_TABLELOG, FSE_MAX_SYMBOL_VALUE));   /* compilation failures here means scratchBuffer is not large enough */
    if (tableLog > FSE_MAX_TABLELOG) return FUNC1(tableLog_tooLarge);
    return FUNC3(dst, dstCapacity, src, srcSize, maxSymbolValue, tableLog, &scratchBuffer, sizeof(scratchBuffer));
}