#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  avctx; } ;
struct TYPE_10__ {int /*<<< orphan*/  spectrum_params; } ;
typedef  TYPE_1__ SpectralBandReplication ;
typedef  TYPE_2__ AACContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(AACContext *ac, SpectralBandReplication *sbr)
{
    int err;
    err = FUNC2(ac, sbr, &sbr->spectrum_params);
    if (err >= 0)
        err = FUNC1(ac, sbr);
    if (err < 0) {
        FUNC0(ac->avctx, AV_LOG_ERROR,
               "SBR reset failed. Switching SBR to pure upsampling mode.\n");
        FUNC3(sbr);
    }
}