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
typedef  int uint8_t ;
struct TYPE_7__ {int width; int height; int** data; size_t* linesize; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static AVFrame *FUNC3(AVFrame *in)
{
    int x, y;
    AVFrame *frame = FUNC0();
    uint8_t *src, *dst;
    if (!frame)
        return NULL;

    frame->format = in->format;
    frame->width  = (in->width + 1) / 2;
    frame->height = (in->height+ 1) / 2;

    if (FUNC2(frame, 32) < 0) {
        FUNC1(&frame);
        return NULL;
    }
    src = in   ->data[0];
    dst = frame->data[0];

    for(y = 0; y < frame->height; y++) {
        for(x = 0; x < frame->width; x++) {
            dst[x] = (  src[2*x+0]
                      + src[2*x+1]
                      + src[2*x+0 + in->linesize[0]]
                      + src[2*x+1 + in->linesize[0]]
                      + 2) >> 2;
        }
        src += 2*in->linesize[0];
        dst += frame->linesize[0];
    }
    return frame;
}