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
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (char const*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  endOnInputSize ; 
 int /*<<< orphan*/  noDict ; 
 int /*<<< orphan*/  partial_decode ; 

int FUNC2(const char* src, char* dst, int compressedSize, int targetOutputSize, int dstCapacity)
{
    dstCapacity = FUNC1(targetOutputSize, dstCapacity);
    return FUNC0(src, dst, compressedSize, dstCapacity,
                                  endOnInputSize, partial_decode,
                                  noDict, (BYTE*)dst, NULL, 0);
}