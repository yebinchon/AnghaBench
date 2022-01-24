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
struct TYPE_3__ {int height; int* linesize; int width; scalar_t__* data; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int) ; 

__attribute__((used)) static void FUNC3(AVFrame *frame)
{
    int i, h_chroma_shift, v_chroma_shift;

    FUNC1(frame->format, &h_chroma_shift, &v_chroma_shift);

    for(i=0; i<frame->height; i++)
        FUNC2(frame->data[0] + frame->linesize[0]*i, 0x80, frame->width);
    for(i=0; i<FUNC0(frame->height, v_chroma_shift); i++) {
        FUNC2(frame->data[1] + frame->linesize[1]*i,
               0x80, FUNC0(frame->width, h_chroma_shift));
        FUNC2(frame->data[2] + frame->linesize[2]*i,
               0x80, FUNC0(frame->width, h_chroma_shift));
    }
}