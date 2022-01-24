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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_13__ {scalar_t__* position; int window; scalar_t__ stride; int /*<<< orphan*/  real_to_complex; scalar_t__ nfrag; int /*<<< orphan*/  state; } ;
struct TYPE_12__ {scalar_t__* position; scalar_t__ nsamples; int /*<<< orphan*/ * data; int /*<<< orphan*/  xdat; } ;
typedef  TYPE_1__ AudioFragment ;
typedef  TYPE_2__ ATempoContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  YAE_FLUSH_OUTPUT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_1__* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(ATempoContext *atempo,
                     uint8_t **dst_ref,
                     uint8_t *dst_end)
{
    AudioFragment *frag = FUNC8(atempo);
    int64_t overlap_end;
    int64_t start_here;
    int64_t stop_here;
    int64_t offset;

    const uint8_t *src;
    uint8_t *dst;

    int src_size;
    int dst_size;
    int nbytes;

    atempo->state = YAE_FLUSH_OUTPUT;

    if (!atempo->nfrag) {
        // there is nothing to flush:
        return 0;
    }

    if (atempo->position[0] == frag->position[0] + frag->nsamples &&
        atempo->position[1] == frag->position[1] + frag->nsamples) {
        // the current fragment is already flushed:
        return 0;
    }

    if (frag->position[0] + frag->nsamples < atempo->position[0]) {
        // finish loading the current (possibly partial) fragment:
        FUNC10(atempo, NULL, NULL);

        if (atempo->nfrag) {
            // down-mix to mono:
            FUNC9(atempo, frag);

            // apply rDFT:
            FUNC4(atempo->real_to_complex, frag->xdat);

            // align current fragment to previous fragment:
            if (FUNC6(atempo)) {
                // reload the current fragment due to adjusted position:
                FUNC10(atempo, NULL, NULL);
            }
        }
    }

    // flush the overlap region:
    overlap_end = frag->position[1] + FUNC2(atempo->window / 2,
                                            frag->nsamples);

    while (atempo->position[1] < overlap_end) {
        if (FUNC11(atempo, dst_ref, dst_end) != 0) {
            return FUNC0(EAGAIN);
        }
    }

    // check whether all of the input samples have been consumed:
    if (frag->position[0] + frag->nsamples < atempo->position[0]) {
        FUNC7(atempo);
        return FUNC0(EAGAIN);
    }

    // flush the remainder of the current fragment:
    start_here = FUNC1(atempo->position[1], overlap_end);
    stop_here  = frag->position[1] + frag->nsamples;
    offset     = start_here - frag->position[1];
    FUNC3(start_here <= stop_here && frag->position[1] <= start_here);

    src = frag->data + offset * atempo->stride;
    dst = (uint8_t *)*dst_ref;

    src_size = (int)(stop_here - start_here) * atempo->stride;
    dst_size = dst_end - dst;
    nbytes = FUNC2(src_size, dst_size);

    FUNC5(dst, src, nbytes);
    dst += nbytes;

    atempo->position[1] += (nbytes / atempo->stride);

    // pass-back the updated destination buffer pointer:
    *dst_ref = (uint8_t *)dst;

    return atempo->position[1] == stop_here ? 0 : FUNC0(EAGAIN);
}