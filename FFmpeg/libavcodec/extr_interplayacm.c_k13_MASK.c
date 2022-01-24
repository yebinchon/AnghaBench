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
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * map_1bit ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(InterplayACMContext *s, unsigned ind, unsigned col)
{
    GetBitContext *gb = &s->gb;
    unsigned i, b;

    for (i = 0; i < s->rows; i++) {
        b = FUNC0(gb);
        if (b == 0) {
            FUNC1(s, i++, col, 0);
            if (i >= s->rows)
                break;
            FUNC1(s, i, col, 0);
            continue;
        }
        b = FUNC0(gb);
        if (b == 0) {
            FUNC1(s, i, col, 0);
            continue;
        }
        b = FUNC0(gb);
        FUNC1(s, i, col, map_1bit[b]);
    }
    return 0;
}