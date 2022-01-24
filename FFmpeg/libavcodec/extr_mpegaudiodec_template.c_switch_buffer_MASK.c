#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int size_in_bits; int /*<<< orphan*/ * buffer; } ;
struct TYPE_5__ {int extrasize; TYPE_3__ gb; TYPE_3__ in_gb; } ;
typedef  TYPE_1__ MPADecodeContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 

__attribute__((used)) static void FUNC3(MPADecodeContext *s, int *pos, int *end_pos,
                          int *end_pos2)
{
    if (s->in_gb.buffer && *pos >= s->gb.size_in_bits - s->extrasize * 8) {
        s->gb           = s->in_gb;
        s->in_gb.buffer = NULL;
        s->extrasize    = 0;
        FUNC0((FUNC1(&s->gb) & 7) == 0);
        FUNC2(&s->gb, *pos - *end_pos);
        *end_pos2 =
        *end_pos  = *end_pos2 + FUNC1(&s->gb) - *pos;
        *pos      = FUNC1(&s->gb);
    }
}