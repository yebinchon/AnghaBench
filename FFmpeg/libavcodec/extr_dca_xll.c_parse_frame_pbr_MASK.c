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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int pbr_length; scalar_t__ pbr_buffer; scalar_t__ pbr_delay; scalar_t__ frame_size; } ;
typedef  TYPE_1__ DCAXllDecoder ;
typedef  int /*<<< orphan*/  DCAExssAsset ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DCA_XLL_PBR_BUFFER_MAX ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC4 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(DCAXllDecoder *s, uint8_t *data, int size, DCAExssAsset *asset)
{
    int ret;

    if (size > DCA_XLL_PBR_BUFFER_MAX - s->pbr_length) {
        ret = FUNC0(ENOSPC);
        goto fail;
    }

    FUNC2(s->pbr_buffer + s->pbr_length, data, size);
    s->pbr_length += size;

    // Respect decoding delay after synchronization error
    if (s->pbr_delay > 0 && --s->pbr_delay)
        return FUNC0(EAGAIN);

    if ((ret = FUNC4(s, s->pbr_buffer, s->pbr_length, asset)) < 0)
        goto fail;

    if (s->frame_size > s->pbr_length) {
        ret = FUNC0(EINVAL);
        goto fail;
    }

    if (s->frame_size == s->pbr_length) {
        // End of PBR smoothing period
        FUNC1(s);
    } else {
        s->pbr_length -= s->frame_size;
        FUNC3(s->pbr_buffer, s->pbr_buffer + s->frame_size, s->pbr_length);
    }

    return 0;

fail:
    // For now, throw out all PBR state on failure.
    // Perhaps we can be smarter and try to resync somehow.
    FUNC1(s);
    return ret;
}