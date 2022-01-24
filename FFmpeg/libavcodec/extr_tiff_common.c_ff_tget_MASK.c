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
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
#define  TIFF_BYTE 130 
#define  TIFF_LONG 129 
#define  TIFF_SHORT 128 
 int UINT_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

unsigned FUNC3(GetByteContext *gb, int type, int le)
{
    switch (type) {
    case TIFF_BYTE:  return FUNC0(gb);
    case TIFF_SHORT: return FUNC2(gb, le);
    case TIFF_LONG:  return FUNC1(gb, le);
    default:         return UINT_MAX;
    }
}