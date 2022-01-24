#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_5__ {int** quant_index_sel; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ DCACoreDecoder ;

/* Variables and functions */
 int DCA_ABITS_MAX ; 
 int DCA_CODE_BOOKS ; 
 int DCA_SUBBAND_SAMPLES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* ff_dca_quant_index_group_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline int FUNC5(DCACoreDecoder *s, int32_t *audio, int abits, int ch)
{
    FUNC0(abits >= 0 && abits <= DCA_ABITS_MAX);

    if (abits == 0) {
        // No bits allocated
        FUNC2(audio, 0, DCA_SUBBAND_SAMPLES * sizeof(*audio));
        return 0;
    }

    if (abits <= DCA_CODE_BOOKS) {
        int sel = s->quant_index_sel[ch][abits - 1];
        if (sel < ff_dca_quant_index_group_size[abits - 1]) {
            // Huffman codes
            return FUNC4(s, audio, abits, sel);
        }
        if (abits <= 7) {
            // Block codes
            return FUNC3(s, audio, abits);
        }
    }

    // No further encoding
    FUNC1(&s->gb, audio, DCA_SUBBAND_SAMPLES, abits - 3);
    return 0;
}