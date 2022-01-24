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
struct TYPE_3__ {int restart_interval; int /*<<< orphan*/  avctx; scalar_t__ restart_count; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ MJpegDecodeContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(MJpegDecodeContext *s)
{
    if (FUNC1(&s->gb, 16) != 4)
        return AVERROR_INVALIDDATA;
    s->restart_interval = FUNC1(&s->gb, 16);
    s->restart_count    = 0;
    FUNC0(s->avctx, AV_LOG_DEBUG, "restart interval: %d\n",
           s->restart_interval);

    return 0;
}