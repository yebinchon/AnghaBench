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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  error_concealment; } ;
struct TYPE_4__ {int mecc_inited; int mb_stride; int mb_height; int mb_num; scalar_t__ error_occurred; int /*<<< orphan*/  error_count; int /*<<< orphan*/  error_status_table; TYPE_2__* avctx; int /*<<< orphan*/  mecc; } ;
typedef  TYPE_1__ ERContext ;

/* Variables and functions */
 int ER_MB_END ; 
 int ER_MB_ERROR ; 
 int VP_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

void FUNC3(ERContext *s)
{
    if (!s->avctx->error_concealment)
        return;

    if (!s->mecc_inited) {
        FUNC1(&s->mecc, s->avctx);
        s->mecc_inited = 1;
    }

    FUNC2(s->error_status_table, ER_MB_ERROR | VP_START | ER_MB_END,
           s->mb_stride * s->mb_height * sizeof(uint8_t));
    FUNC0(&s->error_count, 3 * s->mb_num);
    s->error_occurred = 0;
}