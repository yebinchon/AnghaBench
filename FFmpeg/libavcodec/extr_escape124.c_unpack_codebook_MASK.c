#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int* pixels; } ;
struct TYPE_4__ {unsigned int depth; unsigned int size; TYPE_3__* blocks; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  MacroBlock ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ CodeBook ;

/* Variables and functions */
 int INT_MAX ; 
 TYPE_3__* FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static CodeBook FUNC3(GetBitContext* gb, unsigned depth,
                                 unsigned size)
{
    unsigned i, j;
    CodeBook cb = { 0 };

    if (size >= INT_MAX / 34 || FUNC2(gb) < size * 34)
        return cb;

    if (size >= INT_MAX / sizeof(MacroBlock))
        return cb;
    cb.blocks = FUNC0(size ? size * sizeof(MacroBlock) : 1);
    if (!cb.blocks)
        return cb;

    cb.depth = depth;
    cb.size = size;
    for (i = 0; i < size; i++) {
        unsigned mask_bits = FUNC1(gb, 4);
        unsigned color0 = FUNC1(gb, 15);
        unsigned color1 = FUNC1(gb, 15);

        for (j = 0; j < 4; j++) {
            if (mask_bits & (1 << j))
                cb.blocks[i].pixels[j] = color1;
            else
                cb.blocks[i].pixels[j] = color0;
        }
    }
    return cb;
}