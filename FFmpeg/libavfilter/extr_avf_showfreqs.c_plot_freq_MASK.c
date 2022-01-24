#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int h; int /*<<< orphan*/  frame_count_in; } ;
struct TYPE_7__ {int w; float minamp; float** avg_data; int ascale; int cmode; int nb_channels; int avg; int mode; } ;
typedef  TYPE_1__ ShowFreqsContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterLink ;

/* Variables and functions */
#define  AS_CBRT 136 
#define  AS_LINEAR 135 
#define  AS_LOG 134 
#define  AS_SQRT 133 
#define  BAR 132 
#define  COMBINED 131 
#define  DOT 130 
 int FUNC0 (float const,int) ; 
#define  LINE 129 
#define  SEPARATE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 float const FUNC2 (double,float const,int) ; 
 int /*<<< orphan*/  FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const,int,int /*<<< orphan*/ *) ; 
 float FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*,int) ; 
 double FUNC7 (float const) ; 
 int /*<<< orphan*/  FUNC8 (double) ; 

__attribute__((used)) static inline void FUNC9(ShowFreqsContext *s, int ch,
                             double a, int f, uint8_t fg[4], int *prev_y,
                             AVFrame *out, AVFilterLink *outlink)
{
    const int w = s->w;
    const float min = s->minamp;
    const float avg = s->avg_data[ch][f];
    const float bsize = FUNC5(s, f);
    const int sx = FUNC6(s, f);
    int end = outlink->h;
    int x, y, i;

    switch(s->ascale) {
    case AS_SQRT:
        a = 1.0 - FUNC8(a);
        break;
    case AS_CBRT:
        a = 1.0 - FUNC3(a);
        break;
    case AS_LOG:
        a = FUNC7(FUNC2(a, min, 1)) / FUNC7(min);
        break;
    case AS_LINEAR:
        a = 1.0 - a;
        break;
    }

    switch (s->cmode) {
    case COMBINED:
        y = a * outlink->h - 1;
        break;
    case SEPARATE:
        end = (outlink->h / s->nb_channels) * (ch + 1);
        y = (outlink->h / s->nb_channels) * ch + a * (outlink->h / s->nb_channels) - 1;
        break;
    default:
        FUNC1(0);
    }
    if (y < 0)
        return;

    switch (s->avg) {
    case 0:
        y = s->avg_data[ch][f] = !outlink->frame_count_in ? y : FUNC0(avg, y);
        break;
    case 1:
        break;
    default:
        s->avg_data[ch][f] = avg + y * (y - avg) / (FUNC0(outlink->frame_count_in + 1, s->avg) * y);
        y = s->avg_data[ch][f];
        break;
    }

    switch(s->mode) {
    case LINE:
        if (*prev_y == -1) {
            *prev_y = y;
        }
        if (y <= *prev_y) {
            for (x = sx + 1; x < sx + bsize && x < w; x++)
                FUNC4(out, x, y, fg);
            for (i = y; i <= *prev_y; i++)
                FUNC4(out, sx, i, fg);
        } else {
            for (i = *prev_y; i <= y; i++)
                FUNC4(out, sx, i, fg);
            for (x = sx + 1; x < sx + bsize && x < w; x++)
                FUNC4(out, x, i - 1, fg);
        }
        *prev_y = y;
        break;
    case BAR:
        for (x = sx; x < sx + bsize && x < w; x++)
            for (i = y; i < end; i++)
                FUNC4(out, x, i, fg);
        break;
    case DOT:
        for (x = sx; x < sx + bsize && x < w; x++)
            FUNC4(out, x, y, fg);
        break;
    }
}