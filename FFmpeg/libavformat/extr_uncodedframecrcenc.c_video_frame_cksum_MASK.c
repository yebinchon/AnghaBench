#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int height; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ ** data; int /*<<< orphan*/  width; int /*<<< orphan*/  format; } ;
struct TYPE_5__ {unsigned int name; int nb_components; int /*<<< orphan*/  log2_chroma_h; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;
typedef  TYPE_2__ AVFrame ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(AVBPrint *bp, AVFrame *frame)
{
    const AVPixFmtDescriptor *desc = FUNC4(frame->format);
    int i, y;
    uint8_t *data;
    int linesize[5] = { 0 };

    FUNC2(bp, ", %d x %d", frame->width, frame->height);
    if (!desc) {
        FUNC2(bp, ", unknown");
        return;
    }
    if (FUNC3(linesize, frame->format, frame->width) < 0)
        return;
    FUNC2(bp, ", %s", desc->name);
    for (i = 0; linesize[i]; i++) {
        unsigned cksum = 0;
        int h = frame->height;
        if ((i == 1 || i == 2) && desc->nb_components >= 3)
            h = FUNC0(h, desc->log2_chroma_h);
        data = frame->data[i];
        for (y = 0; y < h; y++) {
            cksum = FUNC1(cksum, data, linesize[i]);
            data += frame->linesize[i];
        }
        FUNC2(bp, ", 0x%08x", cksum);
    }
}