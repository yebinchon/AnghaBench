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
struct TYPE_3__ {int bit_index; int /*<<< orphan*/  g; } ;
typedef  TYPE_1__ Jpeg2000DecoderContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(Jpeg2000DecoderContext *s, int n)
{
    int res = 0;

    while (--n >= 0) {
        res <<= 1;
        if (s->bit_index == 0) {
            s->bit_index = 7 + (FUNC0(&s->g) != 0xFFu);
        }
        s->bit_index--;
        res |= (FUNC1(&s->g) >> s->bit_index) & 1;
    }
    return res;
}