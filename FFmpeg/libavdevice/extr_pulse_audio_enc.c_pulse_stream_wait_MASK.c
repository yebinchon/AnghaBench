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
typedef  scalar_t__ pa_stream_state_t ;
struct TYPE_3__ {int /*<<< orphan*/  mainloop; int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ PulseData ;

/* Variables and functions */
 int AVERROR_EXTERNAL ; 
 scalar_t__ PA_STREAM_FAILED ; 
 scalar_t__ PA_STREAM_READY ; 
 scalar_t__ PA_STREAM_TERMINATED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(PulseData *s)
{
    pa_stream_state_t state;

    while ((state = FUNC0(s->stream)) != PA_STREAM_READY) {
        if (state == PA_STREAM_FAILED || state == PA_STREAM_TERMINATED)
            return AVERROR_EXTERNAL;
        FUNC1(s->mainloop);
    }
    return 0;
}