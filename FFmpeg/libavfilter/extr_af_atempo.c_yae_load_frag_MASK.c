#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_8__ {scalar_t__ window; scalar_t__* position; scalar_t__ size; scalar_t__ stride; int head; int tail; int ring; int /*<<< orphan*/ * buffer; } ;
struct TYPE_7__ {scalar_t__* position; int /*<<< orphan*/ * data; scalar_t__ nsamples; } ;
typedef  TYPE_1__ AudioFragment ;
typedef  TYPE_2__ ATempoContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAGAIN ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(ATempoContext *atempo,
                         const uint8_t **src_ref,
                         const uint8_t *src_end)
{
    // shortcuts:
    AudioFragment *frag = FUNC5(atempo);
    uint8_t *dst;
    int64_t missing, start, zeros;
    uint32_t nsamples;
    const uint8_t *a, *b;
    int i0, i1, n0, n1, na, nb;

    int64_t stop_here = frag->position[0] + atempo->window;
    if (src_ref && FUNC6(atempo, src_ref, src_end, stop_here) != 0) {
        return FUNC0(EAGAIN);
    }

    // calculate the number of samples we don't have:
    missing =
        stop_here > atempo->position[0] ?
        stop_here - atempo->position[0] : 0;

    nsamples =
        missing < (int64_t)atempo->window ?
        (uint32_t)(atempo->window - missing) : 0;

    // setup the output buffer:
    frag->nsamples = nsamples;
    dst = frag->data;

    start = atempo->position[0] - atempo->size;
    zeros = 0;

    if (frag->position[0] < start) {
        // what we don't have we substitute with zeros:
        zeros = FUNC1(start - frag->position[0], (int64_t)nsamples);
        FUNC2(zeros != nsamples);

        FUNC4(dst, 0, zeros * atempo->stride);
        dst += zeros * atempo->stride;
    }

    if (zeros == nsamples) {
        return 0;
    }

    // get the remaining data from the ring buffer:
    na = (atempo->head < atempo->tail ?
          atempo->tail - atempo->head :
          atempo->ring - atempo->head);

    nb = atempo->head < atempo->tail ? 0 : atempo->tail;

    // sanity check:
    FUNC2(nsamples <= zeros + na + nb);

    a = atempo->buffer + atempo->head * atempo->stride;
    b = atempo->buffer;

    i0 = frag->position[0] + zeros - start;
    i1 = i0 < na ? 0 : i0 - na;

    n0 = i0 < na ? FUNC1(na - i0, (int)(nsamples - zeros)) : 0;
    n1 = nsamples - zeros - n0;

    if (n0) {
        FUNC3(dst, a + i0 * atempo->stride, n0 * atempo->stride);
        dst += n0 * atempo->stride;
    }

    if (n1) {
        FUNC3(dst, b + i1 * atempo->stride, n1 * atempo->stride);
    }

    return 0;
}