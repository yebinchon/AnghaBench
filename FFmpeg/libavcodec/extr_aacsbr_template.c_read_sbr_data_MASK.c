#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  avctx; } ;
struct TYPE_12__ {int id_aac; int ready_for_dequant; } ;
typedef  TYPE_1__ SpectralBandReplication ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AACContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int TYPE_CCE ; 
 int TYPE_CPE ; 
 int TYPE_SCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static unsigned int FUNC9(AACContext *ac, SpectralBandReplication *sbr,
                                  GetBitContext *gb, int id_aac)
{
    unsigned int cnt = FUNC3(gb);

    sbr->id_aac = id_aac;
    sbr->ready_for_dequant = 1;

    if (id_aac == TYPE_SCE || id_aac == TYPE_CCE) {
        if (FUNC6(ac, sbr, gb)) {
            FUNC7(sbr);
            return FUNC3(gb) - cnt;
        }
    } else if (id_aac == TYPE_CPE) {
        if (FUNC4(ac, sbr, gb)) {
            FUNC7(sbr);
            return FUNC3(gb) - cnt;
        }
    } else {
        FUNC0(ac->avctx, AV_LOG_ERROR,
            "Invalid bitstream - cannot apply SBR to element type %d\n", id_aac);
        FUNC7(sbr);
        return FUNC3(gb) - cnt;
    }
    if (FUNC2(gb)) { // bs_extended_data
        int num_bits_left = FUNC1(gb, 4); // bs_extension_size
        if (num_bits_left == 15)
            num_bits_left += FUNC1(gb, 8); // bs_esc_count

        num_bits_left <<= 3;
        while (num_bits_left > 7) {
            num_bits_left -= 2;
            FUNC5(ac, sbr, gb, FUNC1(gb, 2), &num_bits_left); // bs_extension_id
        }
        if (num_bits_left < 0) {
            FUNC0(ac->avctx, AV_LOG_ERROR, "SBR Extension over read.\n");
        }
        if (num_bits_left > 0)
            FUNC8(gb, num_bits_left);
    }

    return FUNC3(gb) - cnt;
}