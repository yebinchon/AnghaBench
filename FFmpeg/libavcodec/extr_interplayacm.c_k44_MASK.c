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
 unsigned int FUNC0 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * map_3bit ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(InterplayACMContext *s, unsigned ind, unsigned col)
{
    GetBitContext *gb = &s->gb;
    unsigned i, b;

    for (i = 0; i < s->rows; i++) {
        b = FUNC1(gb);
        if (b == 0) {
            FUNC2(s, i, col, 0);
            continue;
        }

        b = FUNC0(gb, 3);
        FUNC2(s, i, col, map_3bit[b]);
    }
    return 0;
}