#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int width; int height; } ;
struct TYPE_5__ {int buffer_stride; void* mcscratch; void* mctmp; void* edge_emu_buffer_base; int /*<<< orphan*/  edge_emu_buffer; TYPE_1__ seq; } ;
typedef  TYPE_2__ DiracContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int MAX_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(DiracContext *s, int stride)
{
    int w = s->seq.width;
    int h = s->seq.height;

    FUNC1(stride >= w);
    stride += 64;

    if (s->buffer_stride >= stride)
        return 0;
    s->buffer_stride = 0;

    FUNC2(&s->edge_emu_buffer_base);
    FUNC4(s->edge_emu_buffer, 0, sizeof(s->edge_emu_buffer));
    FUNC2(&s->mctmp);
    FUNC2(&s->mcscratch);

    s->edge_emu_buffer_base = FUNC3(stride, MAX_BLOCKSIZE);

    s->mctmp     = FUNC3((stride+MAX_BLOCKSIZE), (h+MAX_BLOCKSIZE) * sizeof(*s->mctmp));
    s->mcscratch = FUNC3(stride, MAX_BLOCKSIZE);

    if (!s->edge_emu_buffer_base || !s->mctmp || !s->mcscratch)
        return FUNC0(ENOMEM);

    s->buffer_stride = stride;
    return 0;
}