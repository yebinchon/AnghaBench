#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ compress_factor; int channels; scalar_t__ channels_coupled; scalar_t__ dc_correction; } ;
typedef  TYPE_1__ DynamicAudioNormalizerContext ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 scalar_t__ DBL_EPSILON ; 
 double const FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,double const) ; 

__attribute__((used)) static void FUNC4(DynamicAudioNormalizerContext *s, AVFrame *frame)
{
    if (s->dc_correction) {
        FUNC2(s, frame);
    }

    if (s->compress_factor > DBL_EPSILON) {
        FUNC1(s, frame);
    }

    if (s->channels_coupled) {
        const double current_gain_factor = FUNC0(s, frame, -1);
        int c;

        for (c = 0; c < s->channels; c++)
            FUNC3(s, c, current_gain_factor);
    } else {
        int c;

        for (c = 0; c < s->channels; c++)
            FUNC3(s, c, FUNC0(s, frame, c));
    }
}