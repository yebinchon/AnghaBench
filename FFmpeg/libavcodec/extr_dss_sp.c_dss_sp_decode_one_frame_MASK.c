#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_8__ {size_t* sf_adaptive_gain; int /*<<< orphan*/ * sf; int /*<<< orphan*/ * pitch_lag; } ;
struct TYPE_9__ {int /*<<< orphan*/ ** working_buffer; int /*<<< orphan*/ * lpc_filter; int /*<<< orphan*/ * vector_buf; int /*<<< orphan*/  err_buf2; int /*<<< orphan*/  filter; int /*<<< orphan*/ * history; TYPE_1__ fparam; } ;
typedef  TYPE_2__ DssSpContext ;

/* Variables and functions */
 int SUBFRAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * dss_sp_adaptive_gain ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(DssSpContext *p,
                                   int16_t *abuf_dst, const uint8_t *abuf_src)
{
    int i, j;

    FUNC6(p, abuf_src);

    FUNC7(p);

    FUNC2(p->lpc_filter, p->filter);

    for (j = 0; j < SUBFRAMES; j++) {
        FUNC3(p->vector_buf, p->history,
                       p->fparam.pitch_lag[j],
                       dss_sp_adaptive_gain[p->fparam.sf_adaptive_gain[j]]);

        FUNC1(p->vector_buf, &p->fparam.sf[j]);

        FUNC8(p->vector_buf, p->history);

        for (i = 0; i < 72; i++)
            p->vector_buf[i] = p->history[72 - i];

        FUNC5(p->filter,
                            p->err_buf2, p->vector_buf);

        FUNC4(p, p->lpc_filter[0],
                            &p->working_buffer[j][0], 72);
    }

    FUNC9(p, &p->working_buffer[0][0]);

    FUNC0(abuf_dst,
                     &p->working_buffer[0][0], 264);
    return 0;
}