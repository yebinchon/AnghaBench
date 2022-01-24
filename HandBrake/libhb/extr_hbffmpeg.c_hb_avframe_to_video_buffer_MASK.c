#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int max_plane; } ;
struct TYPE_12__ {TYPE_2__* plane; TYPE_1__ f; } ;
typedef  TYPE_3__ hb_buffer_t ;
struct TYPE_13__ {int* linesize; int /*<<< orphan*/ ** data; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  format; } ;
struct TYPE_11__ {int stride; int height; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  AVRational ;
typedef  TYPE_4__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

hb_buffer_t * FUNC4(AVFrame *frame, AVRational time_base)
{
    hb_buffer_t * buf;

    buf = FUNC2(frame->format, frame->width, frame->height);
    if (buf == NULL)
    {
        return NULL;
    }

    FUNC1(buf, frame, time_base);

    int pp;
    for (pp = 0; pp <= buf->f.max_plane; pp++)
    {
        int yy;
        int stride    = buf->plane[pp].stride;
        int height    = buf->plane[pp].height;
        int linesize  = frame->linesize[pp];
        int size = linesize < stride ? FUNC0(linesize) : stride;
        uint8_t * dst = buf->plane[pp].data;
        uint8_t * src = frame->data[pp];

        for (yy = 0; yy < height; yy++)
        {
            FUNC3(dst, src, size);
            dst += stride;
            src += linesize;
        }
    }

    return buf;
}