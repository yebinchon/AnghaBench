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
typedef  int /*<<< orphan*/  slice_buffer ;
struct TYPE_6__ {int y; int /*<<< orphan*/ * b3; int /*<<< orphan*/ * b2; int /*<<< orphan*/ * b1; int /*<<< orphan*/ * b0; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* horizontal_compose97i ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  (* vertical_compose97i ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_1__ SnowDWTContext ;
typedef  int /*<<< orphan*/  IDWTELEM ;
typedef  TYPE_2__ DWTCompose ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(SnowDWTContext *dsp, DWTCompose *cs,
                                           slice_buffer * sb, IDWTELEM *temp,
                                           int width, int height,
                                           int stride_line)
{
    int y = cs->y;

    IDWTELEM *b0 = cs->b0;
    IDWTELEM *b1 = cs->b1;
    IDWTELEM *b2 = cs->b2;
    IDWTELEM *b3 = cs->b3;
    IDWTELEM *b4 = FUNC1(sb,
                                         FUNC0(y + 3, height - 1) *
                                         stride_line);
    IDWTELEM *b5 = FUNC1(sb,
                                         FUNC0(y + 4, height - 1) *
                                         stride_line);

    if (y > 0 && y + 4 < height) {
        dsp->vertical_compose97i(b0, b1, b2, b3, b4, b5, width);
    } else {
        if (y + 3 < (unsigned)height)
            FUNC8(b3, b4, b5, width);
        if (y + 2 < (unsigned)height)
            FUNC6(b2, b3, b4, width);
        if (y + 1 < (unsigned)height)
            FUNC7(b1, b2, b3, width);
        if (y + 0 < (unsigned)height)
            FUNC5(b0, b1, b2, width);
    }

    if (y - 1 < (unsigned)height)
        dsp->horizontal_compose97i(b0, temp, width);
    if (y + 0 < (unsigned)height)
        dsp->horizontal_compose97i(b1, temp, width);

    cs->b0  = b2;
    cs->b1  = b3;
    cs->b2  = b4;
    cs->b3  = b5;
    cs->y  += 2;
}