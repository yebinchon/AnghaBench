#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ VLC ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int*) ; 
 int* code_prefix ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(GetBitContext *gb, VLC *table, int flag)
{
    int v;

    if (FUNC2(gb) < 1)
        return AVERROR_INVALIDDATA;
    v = FUNC4(gb, table->table, table->bits, 1);
    if (v < 0)
        return AVERROR_INVALIDDATA;
    if (v)
        v = v - 1;
    else
        v = FUNC1(gb, FUNC1(gb, 3) + 1);

    if (flag) {
        if (v >= FUNC0(code_prefix))
            return AVERROR_INVALIDDATA;

        v = code_prefix[v] + FUNC3(gb, v >> 2);
    }

    return v;
}