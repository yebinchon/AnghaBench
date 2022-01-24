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
struct TYPE_3__ {int* uv_linesize; int* pr_height; void** ker; void** v; void** u; } ;
typedef  TYPE_1__ V360Context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(V360Context *s, int sizeof_uv, int sizeof_ker, int p)
{
    s->u[p] = FUNC1(s->uv_linesize[p] * s->pr_height[p], sizeof_uv);
    s->v[p] = FUNC1(s->uv_linesize[p] * s->pr_height[p], sizeof_uv);
    if (!s->u[p] || !s->v[p])
        return FUNC0(ENOMEM);
    if (sizeof_ker) {
        s->ker[p] = FUNC1(s->uv_linesize[p] * s->pr_height[p], sizeof_ker);
        if (!s->ker[p])
            return FUNC0(ENOMEM);
    }

    return 0;
}