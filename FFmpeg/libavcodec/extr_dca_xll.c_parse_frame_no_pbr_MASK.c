#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int xll_sync_offset; scalar_t__ xll_delay_nframes; scalar_t__ xll_sync_present; } ;
struct TYPE_8__ {int frame_size; } ;
typedef  TYPE_1__ DCAXllDecoder ;
typedef  TYPE_2__ DCAExssAsset ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int,scalar_t__) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int,TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(DCAXllDecoder *s, uint8_t *data, int size, DCAExssAsset *asset)
{
    int ret = FUNC2(s, data, size, asset);

    // If XLL packet data didn't start with a sync word, we must have jumped
    // right into the middle of PBR smoothing period
    if (ret == FUNC0(EAGAIN) && asset->xll_sync_present && asset->xll_sync_offset < size) {
        // Skip to the next sync word in this packet
        data += asset->xll_sync_offset;
        size -= asset->xll_sync_offset;

        // If decoding delay is set, put the frame into PBR buffer and return
        // failure code. Higher level decoder is expected to switch to lossy
        // core decoding or mute its output until decoding delay expires.
        if (asset->xll_delay_nframes > 0) {
            if ((ret = FUNC1(s, data, size, asset->xll_delay_nframes)) < 0)
                return ret;
            return FUNC0(EAGAIN);
        }

        // No decoding delay, just parse the frame in place
        ret = FUNC2(s, data, size, asset);
    }

    if (ret < 0)
        return ret;

    if (s->frame_size > size)
        return FUNC0(EINVAL);

    // If the XLL decoder didn't consume full packet, start PBR smoothing period
    if (s->frame_size < size)
        if ((ret = FUNC1(s, data + s->frame_size, size - s->frame_size, 0)) < 0)
            return ret;

    return 0;
}