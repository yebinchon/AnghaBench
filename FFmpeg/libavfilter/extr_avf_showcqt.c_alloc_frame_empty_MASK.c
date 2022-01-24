#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {int format; int width; int height; int* linesize; scalar_t__* data; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int AV_PIX_FMT_RGB24 ; 
 int AV_PIX_FMT_RGBA ; 
 int AV_PIX_FMT_YUV420P ; 
 int AV_PIX_FMT_YUVA420P ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int) ; 

__attribute__((used)) static AVFrame *FUNC4(enum AVPixelFormat format, int w, int h)
{
    AVFrame *out;
    out = FUNC0();
    if (!out)
        return NULL;
    out->format = format;
    out->width = w;
    out->height = h;
    if (FUNC2(out, 32) < 0) {
        FUNC1(&out);
        return NULL;
    }
    if (format == AV_PIX_FMT_RGB24 || format == AV_PIX_FMT_RGBA) {
        FUNC3(out->data[0], 0, out->linesize[0] * h);
    } else {
        int hh = (format == AV_PIX_FMT_YUV420P || format == AV_PIX_FMT_YUVA420P) ? h / 2 : h;
        FUNC3(out->data[0], 16, out->linesize[0] * h);
        FUNC3(out->data[1], 128, out->linesize[1] * hh);
        FUNC3(out->data[2], 128, out->linesize[2] * hh);
        if (out->data[3])
            FUNC3(out->data[3], 0, out->linesize[3] * h);
    }
    return out;
}