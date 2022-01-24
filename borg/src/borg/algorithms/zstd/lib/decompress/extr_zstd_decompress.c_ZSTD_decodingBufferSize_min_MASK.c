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
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC1 (unsigned long long,unsigned long long const) ; 
 int WILDCOPY_OVERLENGTH ; 
 unsigned long long const ZSTD_BLOCKSIZE_MAX ; 
 int /*<<< orphan*/  frameParameter_windowTooLarge ; 

size_t FUNC2(unsigned long long windowSize, unsigned long long frameContentSize)
{
    size_t const blockSize = (size_t) FUNC1(windowSize, ZSTD_BLOCKSIZE_MAX);
    unsigned long long const neededRBSize = windowSize + blockSize + (WILDCOPY_OVERLENGTH * 2);
    unsigned long long const neededSize = FUNC1(frameContentSize, neededRBSize);
    size_t const minRBSize = (size_t) neededSize;
    if ((unsigned long long)minRBSize != neededSize) return FUNC0(frameParameter_windowTooLarge);
    return minRBSize;
}