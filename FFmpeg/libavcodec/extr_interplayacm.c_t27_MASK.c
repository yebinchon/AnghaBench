#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int rows; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ InterplayACMContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int* mul_3x5 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC3(InterplayACMContext *s, unsigned ind, unsigned col)
{
    GetBitContext *gb = &s->gb;
    unsigned i, b;
    int n1, n2, n3;

    for (i = 0; i < s->rows; i++) {
        /* b = (x1) + (x2 * 5) + (x3 * 25) */
        b = FUNC1(gb, 7);
        if (b > 124) {
            FUNC0(NULL, AV_LOG_ERROR, "Too large b = %d > 124\n", b);
            return AVERROR_INVALIDDATA;
        }

        n1 =  (mul_3x5[b] & 0x0F) - 2;
        n2 = ((mul_3x5[b] >> 4) & 0x0F) - 2;
        n3 = ((mul_3x5[b] >> 8) & 0x0F) - 2;

        FUNC2(s, i++, col, n1);
        if (i >= s->rows)
            break;
        FUNC2(s, i++, col, n2);
        if (i >= s->rows)
            break;
        FUNC2(s, i, col, n3);
    }
    return 0;
}