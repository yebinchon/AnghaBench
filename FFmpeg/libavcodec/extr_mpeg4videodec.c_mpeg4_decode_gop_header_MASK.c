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
struct TYPE_3__ {int time_base; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ MpegEncContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(MpegEncContext *s, GetBitContext *gb)
{
    int hours, minutes, seconds;

    if (!FUNC3(gb, 23)) {
        FUNC0(s->avctx, AV_LOG_WARNING, "GOP header invalid\n");
        return AVERROR_INVALIDDATA;
    }

    hours   = FUNC2(gb, 5);
    minutes = FUNC2(gb, 6);
    FUNC1(s->avctx, gb, "in gop_header");
    seconds = FUNC2(gb, 6);

    s->time_base = seconds + 60*(minutes + 60*hours);

    FUNC4(gb);
    FUNC4(gb);

    return 0;
}