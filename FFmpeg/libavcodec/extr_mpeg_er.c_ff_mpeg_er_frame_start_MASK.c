#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  partitioned_frame; int /*<<< orphan*/  quarter_sample; int /*<<< orphan*/  pb_time; int /*<<< orphan*/  pp_time; int /*<<< orphan*/  last_pic; int /*<<< orphan*/  next_pic; int /*<<< orphan*/  cur_pic; } ;
struct TYPE_5__ {int /*<<< orphan*/  partitioned_frame; int /*<<< orphan*/  quarter_sample; int /*<<< orphan*/  pb_time; int /*<<< orphan*/  pp_time; int /*<<< orphan*/  last_picture_ptr; int /*<<< orphan*/  next_picture_ptr; int /*<<< orphan*/  current_picture_ptr; TYPE_2__ er; } ;
typedef  TYPE_1__ MpegEncContext ;
typedef  TYPE_2__ ERContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(MpegEncContext *s)
{
    ERContext *er = &s->er;

    FUNC1(&er->cur_pic,  s->current_picture_ptr);
    FUNC1(&er->next_pic, s->next_picture_ptr);
    FUNC1(&er->last_pic, s->last_picture_ptr);

    er->pp_time           = s->pp_time;
    er->pb_time           = s->pb_time;
    er->quarter_sample    = s->quarter_sample;
    er->partitioned_frame = s->partitioned_frame;

    FUNC0(er);
}