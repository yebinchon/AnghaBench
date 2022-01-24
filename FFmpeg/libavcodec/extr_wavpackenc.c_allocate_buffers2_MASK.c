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
struct TYPE_3__ {int block_samples; int flags; int /*<<< orphan*/ ** sampleptrs; int /*<<< orphan*/ ** sampleptrs_size; } ;
typedef  TYPE_1__ WavPackEncodeContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int WV_MONO_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(WavPackEncodeContext *s, int nterms)
{
    int i;

    for (i = 0; i < nterms + 2; i++) {
        FUNC1(&s->sampleptrs[i][0], &s->sampleptrs_size[i][0],
                              s->block_samples * 4);
        if (!s->sampleptrs[i][0])
            return FUNC0(ENOMEM);
        if (!(s->flags & WV_MONO_DATA)) {
            FUNC1(&s->sampleptrs[i][1], &s->sampleptrs_size[i][1],
                                  s->block_samples * 4);
            if (!s->sampleptrs[i][1])
                return FUNC0(ENOMEM);
        }
    }

    return 0;
}