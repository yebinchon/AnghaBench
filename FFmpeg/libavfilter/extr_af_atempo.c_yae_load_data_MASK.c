#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__* position; int const ring; double tempo; int stride; int tail; int size; int head; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ ATempoContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAGAIN ; 
 void* FUNC1 (int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC4(ATempoContext *atempo,
                         const uint8_t **src_ref,
                         const uint8_t *src_end,
                         int64_t stop_here)
{
    // shortcut:
    const uint8_t *src = *src_ref;
    const int read_size = stop_here - atempo->position[0];

    if (stop_here <= atempo->position[0]) {
        return 0;
    }

    // samples are not expected to be skipped, unless tempo is greater than 2:
    FUNC2(read_size <= atempo->ring || atempo->tempo > 2.0);

    while (atempo->position[0] < stop_here && src < src_end) {
        int src_samples = (src_end - src) / atempo->stride;

        // load data piece-wise, in order to avoid complicating the logic:
        int nsamples = FUNC1(read_size, src_samples);
        int na;
        int nb;

        nsamples = FUNC1(nsamples, atempo->ring);
        na = FUNC1(nsamples, atempo->ring - atempo->tail);
        nb = FUNC1(nsamples - na, atempo->ring);

        if (na) {
            uint8_t *a = atempo->buffer + atempo->tail * atempo->stride;
            FUNC3(a, src, na * atempo->stride);

            src += na * atempo->stride;
            atempo->position[0] += na;

            atempo->size = FUNC1(atempo->size + na, atempo->ring);
            atempo->tail = (atempo->tail + na) % atempo->ring;
            atempo->head =
                atempo->size < atempo->ring ?
                atempo->tail - atempo->size :
                atempo->tail;
        }

        if (nb) {
            uint8_t *b = atempo->buffer;
            FUNC3(b, src, nb * atempo->stride);

            src += nb * atempo->stride;
            atempo->position[0] += nb;

            atempo->size = FUNC1(atempo->size + nb, atempo->ring);
            atempo->tail = (atempo->tail + nb) % atempo->ring;
            atempo->head =
                atempo->size < atempo->ring ?
                atempo->tail - atempo->size :
                atempo->tail;
        }
    }

    // pass back the updated source buffer pointer:
    *src_ref = src;

    // sanity check:
    FUNC2(atempo->position[0] <= stop_here);

    return atempo->position[0] == stop_here ? 0 : FUNC0(EAGAIN);
}