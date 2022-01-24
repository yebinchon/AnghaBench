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
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(GetByteContext *gb, uint8_t *p, int size, int val)
{
    unsigned int len = 1;

    switch (val) {
    case 63:
        len += FUNC4(gb);
        break;
    case 62:
        len += FUNC3(gb);
        break;
    case 61:
        len += FUNC2(gb);
        break;
    case 60:
        len += FUNC1(gb);
        break;
    default: // val < 60
        len += val;
    }

    if (size < len)
        return AVERROR_INVALIDDATA;

    FUNC0(gb, p, len);

    return len;
}