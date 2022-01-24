#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int x; int y; int /*<<< orphan*/  dist; } ;
typedef  TYPE_1__ cavs_vector ;
typedef  int /*<<< orphan*/  AVSContext ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(AVSContext *h,
                                  cavs_vector *mvP,
                                  cavs_vector *mvA,
                                  cavs_vector *mvB,
                                  cavs_vector *mvC)
{
    int ax, ay, bx, by, cx, cy;
    int len_ab, len_bc, len_ca, len_mid;

    /* scale candidates according to their temporal span */
    FUNC2(h, &ax, &ay, mvA, mvP->dist);
    FUNC2(h, &bx, &by, mvB, mvP->dist);
    FUNC2(h, &cx, &cy, mvC, mvP->dist);
    /* find the geometrical median of the three candidates */
    len_ab  = FUNC0(ax - bx) + FUNC0(ay - by);
    len_bc  = FUNC0(bx - cx) + FUNC0(by - cy);
    len_ca  = FUNC0(cx - ax) + FUNC0(cy - ay);
    len_mid = FUNC1(len_ab, len_bc, len_ca);
    if (len_mid == len_ab) {
        mvP->x = cx;
        mvP->y = cy;
    } else if (len_mid == len_bc) {
        mvP->x = ax;
        mvP->y = ay;
    } else {
        mvP->x = bx;
        mvP->y = by;
    }
}