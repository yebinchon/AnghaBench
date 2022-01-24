#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int* linesize; int /*<<< orphan*/ ** data; } ;
struct TYPE_7__ {int row_step; } ;
struct TYPE_8__ {int* pheight; int* pixstep; int* linesize; TYPE_1__ out; } ;
typedef  TYPE_2__ Stereo3DContext ;
typedef  TYPE_3__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(Stereo3DContext *s, int *out_off, int p, AVFrame *in, AVFrame *out, int d)
{
    int y, x;

    for (y = 0; y < s->pheight[p]; y++) {
        const uint8_t *src = (const uint8_t*)in->data[p] + y * in->linesize[p] + d * s->pixstep[p];
        uint8_t *dst = out->data[p] + out_off[p] + y * out->linesize[p] * s->out.row_step;

        switch (s->pixstep[p]) {
        case 1:
            for (x = 0; x < s->linesize[p]; x++)
                dst[x] = src[x * 2];
            break;
        case 2:
            for (x = 0; x < s->linesize[p]; x+=2)
                FUNC7(&dst[x], FUNC2(&src[x * 2]));
            break;
        case 3:
            for (x = 0; x < s->linesize[p]; x+=3)
                FUNC5(&dst[x], FUNC0(&src[x * 2]));
            break;
        case 4:
            for (x = 0; x < s->linesize[p]; x+=4)
                FUNC8(&dst[x], FUNC3(&src[x * 2]));
            break;
        case 6:
            for (x = 0; x < s->linesize[p]; x+=6)
                FUNC6(&dst[x], FUNC1(&src[x * 2]));
            break;
        case 8:
            for (x = 0; x < s->linesize[p]; x+=8)
                FUNC9(&dst[x], FUNC4(&src[x * 2]));
            break;
        }
    }
}