#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {size_t bandwidth; scalar_t__ stereo; } ;
struct TYPE_5__ {int /*<<< orphan*/  avctx; TYPE_1__ packet; int /*<<< orphan*/  redundancy_output; int /*<<< orphan*/  redundancy_rc; int /*<<< orphan*/  celt; } ;
typedef  TYPE_2__ OpusStreamContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * ff_celt_band_end ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC4(OpusStreamContext *s, const uint8_t *data, int size)
{
    int ret = FUNC2(&s->redundancy_rc, data, size);
    if (ret < 0)
        goto fail;
    FUNC3(&s->redundancy_rc, data + size, size);

    ret = FUNC1(s->celt, &s->redundancy_rc,
                               s->redundancy_output,
                               s->packet.stereo + 1, 240,
                               0, ff_celt_band_end[s->packet.bandwidth]);
    if (ret < 0)
        goto fail;

    return 0;
fail:
    FUNC0(s->avctx, AV_LOG_ERROR, "Error decoding the redundancy frame.\n");
    return ret;
}