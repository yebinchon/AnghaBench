#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  bs_add_harmonic; void* bs_add_harmonic_flag; int /*<<< orphan*/ * bs_invf_mode; } ;
struct TYPE_15__ {int /*<<< orphan*/ * n; TYPE_3__* data; void* bs_coupling; } ;
typedef  TYPE_1__ SpectralBandReplication ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AACContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_3__*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10(AACContext *ac,
                                          SpectralBandReplication *sbr,
                                          GetBitContext *gb)
{
    int ret;

    if (FUNC1(gb))    // bs_data_extra
        FUNC9(gb, 8); // bs_reserved

    if ((sbr->bs_coupling = FUNC1(gb))) {
        if (FUNC6(ac, sbr, gb, &sbr->data[0]))
            return -1;
        FUNC0(&sbr->data[1], &sbr->data[0]);
        FUNC4(sbr, gb, &sbr->data[0]);
        FUNC4(sbr, gb, &sbr->data[1]);
        FUNC7(sbr, gb, &sbr->data[0]);
        FUNC3(sbr->data[1].bs_invf_mode[1], sbr->data[1].bs_invf_mode[0], sizeof(sbr->data[1].bs_invf_mode[0]));
        FUNC3(sbr->data[1].bs_invf_mode[0], sbr->data[0].bs_invf_mode[0], sizeof(sbr->data[1].bs_invf_mode[0]));
        if((ret = FUNC5(ac, sbr, gb, &sbr->data[0], 0)) < 0)
            return ret;
        if((ret = FUNC8(ac, sbr, gb, &sbr->data[0], 0)) < 0)
            return ret;
        if((ret = FUNC5(ac, sbr, gb, &sbr->data[1], 1)) < 0)
            return ret;
        if((ret = FUNC8(ac, sbr, gb, &sbr->data[1], 1)) < 0)
            return ret;
    } else {
        if (FUNC6(ac, sbr, gb, &sbr->data[0]) ||
            FUNC6(ac, sbr, gb, &sbr->data[1]))
            return -1;
        FUNC4(sbr, gb, &sbr->data[0]);
        FUNC4(sbr, gb, &sbr->data[1]);
        FUNC7(sbr, gb, &sbr->data[0]);
        FUNC7(sbr, gb, &sbr->data[1]);
        if((ret = FUNC5(ac, sbr, gb, &sbr->data[0], 0)) < 0)
            return ret;
        if((ret = FUNC5(ac, sbr, gb, &sbr->data[1], 1)) < 0)
            return ret;
        if((ret = FUNC8(ac, sbr, gb, &sbr->data[0], 0)) < 0)
            return ret;
        if((ret = FUNC8(ac, sbr, gb, &sbr->data[1], 1)) < 0)
            return ret;
    }

    if ((sbr->data[0].bs_add_harmonic_flag = FUNC1(gb)))
        FUNC2(gb, sbr->data[0].bs_add_harmonic, sbr->n[1]);
    if ((sbr->data[1].bs_add_harmonic_flag = FUNC1(gb)))
        FUNC2(gb, sbr->data[1].bs_add_harmonic, sbr->n[1]);

    return 0;
}