#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int /*<<< orphan*/  xdat; } ;
struct TYPE_11__ {scalar_t__ state; int /*<<< orphan*/  real_to_complex; int /*<<< orphan*/  nfrag; } ;
typedef  TYPE_1__ ATempoContext ;

/* Variables and functions */
 scalar_t__ YAE_ADJUST_POSITION ; 
 scalar_t__ YAE_LOAD_FRAGMENT ; 
 scalar_t__ YAE_OUTPUT_OVERLAP_ADD ; 
 scalar_t__ YAE_RELOAD_FRAGMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_5__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_5__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(ATempoContext *atempo,
          const uint8_t **src_ref,
          const uint8_t *src_end,
          uint8_t **dst_ref,
          uint8_t *dst_end)
{
    while (1) {
        if (atempo->state == YAE_LOAD_FRAGMENT) {
            // load additional data for the current fragment:
            if (FUNC5(atempo, src_ref, src_end) != 0) {
                break;
            }

            // down-mix to mono:
            FUNC4(atempo, FUNC3(atempo));

            // apply rDFT:
            FUNC0(atempo->real_to_complex, FUNC3(atempo)->xdat);

            // must load the second fragment before alignment can start:
            if (!atempo->nfrag) {
                FUNC2(atempo);
                continue;
            }

            atempo->state = YAE_ADJUST_POSITION;
        }

        if (atempo->state == YAE_ADJUST_POSITION) {
            // adjust position for better alignment:
            if (FUNC1(atempo)) {
                // reload the fragment at the corrected position, so that the
                // Hann window blending would not require normalization:
                atempo->state = YAE_RELOAD_FRAGMENT;
            } else {
                atempo->state = YAE_OUTPUT_OVERLAP_ADD;
            }
        }

        if (atempo->state == YAE_RELOAD_FRAGMENT) {
            // load additional data if necessary due to position adjustment:
            if (FUNC5(atempo, src_ref, src_end) != 0) {
                break;
            }

            // down-mix to mono:
            FUNC4(atempo, FUNC3(atempo));

            // apply rDFT:
            FUNC0(atempo->real_to_complex, FUNC3(atempo)->xdat);

            atempo->state = YAE_OUTPUT_OVERLAP_ADD;
        }

        if (atempo->state == YAE_OUTPUT_OVERLAP_ADD) {
            // overlap-add and output the result:
            if (FUNC6(atempo, dst_ref, dst_end) != 0) {
                break;
            }

            // advance to the next fragment, repeat:
            FUNC2(atempo);
            atempo->state = YAE_LOAD_FRAGMENT;
        }
    }
}