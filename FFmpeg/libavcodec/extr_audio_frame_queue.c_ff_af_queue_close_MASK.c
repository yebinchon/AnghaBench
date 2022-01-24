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
struct TYPE_4__ {int /*<<< orphan*/  frames; scalar_t__ frame_count; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ AudioFrameQueue ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(AudioFrameQueue *afq)
{
    if(afq->frame_count)
        FUNC1(afq->avctx, AV_LOG_WARNING, "%d frames left in the queue on closing\n", afq->frame_count);
    FUNC0(&afq->frames);
    FUNC2(afq, 0, sizeof(*afq));
}