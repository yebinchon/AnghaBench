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
struct TYPE_6__ {TYPE_1__* fdsp; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* vector_fmul ) (float*,float*,float const*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ RA288Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  MAX_BACKWARD_FILTER_ORDER ; 
 int /*<<< orphan*/  FUNC1 (float*,int,float*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int,int,float*,float*,float*,float const*) ; 
 int /*<<< orphan*/  FUNC3 (float*,float*,int) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*,float const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(RA288Context *ractx,
                            float *hist, float *rec, const float *window,
                            float *lpc, const float *tab,
                            int order, int n, int non_rec, int move_size)
{
    float temp[MAX_BACKWARD_FILTER_ORDER+1];

    FUNC2(ractx, order, n, non_rec, temp, hist, rec, window);

    if (!FUNC1(temp, order, lpc, 0, 1, 1))
        ractx->fdsp->vector_fmul(lpc, lpc, tab, FUNC0(order, 16));

    FUNC3(hist, hist + n, move_size*sizeof(*hist));
}