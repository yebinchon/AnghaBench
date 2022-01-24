#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  bs_add_harmonic; scalar_t__ bs_add_harmonic_flag; } ;
struct TYPE_13__ {int /*<<< orphan*/ * n; TYPE_4__* data; } ;
typedef  TYPE_1__ SpectralBandReplication ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AACContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(AACContext *ac,
                                            SpectralBandReplication *sbr,
                                            GetBitContext *gb)
{
    int ret;

    if (FUNC0(gb)) // bs_data_extra
        FUNC7(gb, 4); // bs_reserved

    if (FUNC4(ac, sbr, gb, &sbr->data[0]))
        return -1;
    FUNC2(sbr, gb, &sbr->data[0]);
    FUNC5(sbr, gb, &sbr->data[0]);
    if((ret = FUNC3(ac, sbr, gb, &sbr->data[0], 0)) < 0)
        return ret;
    if((ret = FUNC6(ac, sbr, gb, &sbr->data[0], 0)) < 0)
        return ret;

    if ((sbr->data[0].bs_add_harmonic_flag = FUNC0(gb)))
        FUNC1(gb, sbr->data[0].bs_add_harmonic, sbr->n[1]);

    return 0;
}