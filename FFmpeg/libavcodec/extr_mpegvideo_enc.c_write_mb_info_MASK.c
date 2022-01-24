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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int mb_info_size; int mb_x; int mb_width; int mb_y; int gob_index; int qscale; int /*<<< orphan*/  pb; int /*<<< orphan*/ * mb_info_ptr; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 scalar_t__ CONFIG_H263_ENCODER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(MpegEncContext *s)
{
    uint8_t *ptr = s->mb_info_ptr + s->mb_info_size - 12;
    int offset = FUNC4(&s->pb);
    int mba  = s->mb_x + s->mb_width * (s->mb_y % s->gob_index);
    int gobn = s->mb_y / s->gob_index;
    int pred_x, pred_y;
    if (CONFIG_H263_ENCODER)
        FUNC3(s, 0, 0, &pred_x, &pred_y);
    FUNC2(&ptr, offset);
    FUNC0(&ptr, s->qscale);
    FUNC0(&ptr, gobn);
    FUNC1(&ptr, mba);
    FUNC0(&ptr, pred_x); /* hmv1 */
    FUNC0(&ptr, pred_y); /* vmv1 */
    /* 4MV not implemented */
    FUNC0(&ptr, 0); /* hmv2 */
    FUNC0(&ptr, 0); /* vmv2 */
}