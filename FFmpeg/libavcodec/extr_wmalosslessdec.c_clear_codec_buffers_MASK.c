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
struct TYPE_5__ {int num_channels; int* cdlms_ttl; scalar_t__* ave_sum; TYPE_1__** cdlms; int /*<<< orphan*/  mclms_updates; int /*<<< orphan*/  mclms_prevvalues; int /*<<< orphan*/  mclms_coeffs_cur; int /*<<< orphan*/  mclms_coeffs; int /*<<< orphan*/  lpc_coefs; int /*<<< orphan*/  acfilter_prevvalues; int /*<<< orphan*/  acfilter_coeffs; } ;
typedef  TYPE_2__ WmallDecodeCtx ;
struct TYPE_4__ {int /*<<< orphan*/  lms_updates; int /*<<< orphan*/  lms_prevvalues; int /*<<< orphan*/  coefs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(WmallDecodeCtx *s)
{
    int ich, ilms;

    FUNC0(s->acfilter_coeffs,     0, sizeof(s->acfilter_coeffs));
    FUNC0(s->acfilter_prevvalues, 0, sizeof(s->acfilter_prevvalues));
    FUNC0(s->lpc_coefs,           0, sizeof(s->lpc_coefs));

    FUNC0(s->mclms_coeffs,     0, sizeof(s->mclms_coeffs));
    FUNC0(s->mclms_coeffs_cur, 0, sizeof(s->mclms_coeffs_cur));
    FUNC0(s->mclms_prevvalues, 0, sizeof(s->mclms_prevvalues));
    FUNC0(s->mclms_updates,    0, sizeof(s->mclms_updates));

    for (ich = 0; ich < s->num_channels; ich++) {
        for (ilms = 0; ilms < s->cdlms_ttl[ich]; ilms++) {
            FUNC0(s->cdlms[ich][ilms].coefs, 0,
                   sizeof(s->cdlms[ich][ilms].coefs));
            FUNC0(s->cdlms[ich][ilms].lms_prevvalues, 0,
                   sizeof(s->cdlms[ich][ilms].lms_prevvalues));
            FUNC0(s->cdlms[ich][ilms].lms_updates, 0,
                   sizeof(s->cdlms[ich][ilms].lms_updates));
        }
        s->ave_sum[ich] = 0;
    }
}