#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  pix_fmt; } ;
struct TYPE_6__ {int log2_chroma_w; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AV_NUM_DATA_POINTERS ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int*,int*,int*) ; 

void FUNC5(AVCodecContext *s, int *width, int *height)
{
    const AVPixFmtDescriptor *desc = FUNC3(s->pix_fmt);
    int chroma_shift = desc->log2_chroma_w;
    int linesize_align[AV_NUM_DATA_POINTERS];
    int align;

    FUNC4(s, width, height, linesize_align);
    align               = FUNC1(linesize_align[0], linesize_align[3]);
    linesize_align[1] <<= chroma_shift;
    linesize_align[2] <<= chroma_shift;
    align               = FUNC2(align, linesize_align[1], linesize_align[2]);
    *width              = FUNC0(*width, align);
}