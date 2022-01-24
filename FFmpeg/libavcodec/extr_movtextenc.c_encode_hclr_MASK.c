#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int color; } ;
struct TYPE_5__ {int box_flags; TYPE_1__ hclr; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_2__ MovTextContext ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int HCLR_BOX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int) ; 

__attribute__((used)) static void FUNC2(MovTextContext *s, uint32_t tsmb_type)
{
    uint32_t tsmb_size;
    if (s->box_flags & HCLR_BOX) {
        tsmb_size = 12;
        tsmb_size = FUNC0(&tsmb_size);
        FUNC1(&s->buffer, &tsmb_size, 4);
        FUNC1(&s->buffer, &tsmb_type, 4);
        FUNC1(&s->buffer, &s->hclr.color, 4);
    }
}