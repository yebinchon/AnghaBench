#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int size; int data; } ;
struct TYPE_13__ {int height; } ;
struct TYPE_12__ {int mb_stride; } ;
struct TYPE_11__ {int /*<<< orphan*/  qscale_table_buf; } ;
typedef  TYPE_1__ Picture ;
typedef  TYPE_2__ MpegEncContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,TYPE_4__*,int,int) ; 

int FUNC4(MpegEncContext *s, AVFrame *f, Picture *p, int qp_type)
{
    AVBufferRef *ref = FUNC2(p->qscale_table_buf);
    int offset = 2*s->mb_stride + 1;
    if(!ref)
        return FUNC0(ENOMEM);
    FUNC1(ref->size >= offset + s->mb_stride * ((f->height+15)/16));
    ref->size -= offset;
    ref->data += offset;
    return FUNC3(f, ref, s->mb_stride, qp_type);
}