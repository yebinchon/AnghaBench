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
struct TYPE_5__ {int active_tile_cols; TYPE_1__* td; int /*<<< orphan*/ * intra_pred_data; } ;
typedef  TYPE_2__ VP9Context ;
struct TYPE_4__ {int /*<<< orphan*/  block_base; int /*<<< orphan*/  b_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(VP9Context *s)
{
    int i;

    FUNC0(&s->intra_pred_data[0]);
    for (i = 0; i < s->active_tile_cols; i++) {
        FUNC0(&s->td[i].b_base);
        FUNC0(&s->td[i].block_base);
    }
}