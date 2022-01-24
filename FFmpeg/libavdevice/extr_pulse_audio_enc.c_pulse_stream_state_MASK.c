#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pa_stream ;
struct TYPE_2__ {int /*<<< orphan*/  mainloop; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_1__ PulseData ;

/* Variables and functions */
#define  PA_STREAM_FAILED 130 
#define  PA_STREAM_READY 129 
#define  PA_STREAM_TERMINATED 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(pa_stream *stream, void *userdata)
{
    PulseData *s = userdata;

    if (stream != s->stream)
        return;

    switch (FUNC0(s->stream)) {
        case PA_STREAM_READY:
        case PA_STREAM_FAILED:
        case PA_STREAM_TERMINATED:
            FUNC1(s->mainloop, 0);
        default:
            break;
    }
}