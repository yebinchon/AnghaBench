#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {int channels; scalar_t__ channel_layout; } ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__* ff_vorbis_channel_layouts ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx, int mapping_family) {
    FUNC2(avctx->channels < FUNC1(ff_vorbis_channel_layouts));

    if (!avctx->channel_layout) {
        FUNC4(avctx, AV_LOG_WARNING,
               "No channel layout specified. Opus encoder will use Vorbis "
               "channel layout for %d channels.\n", avctx->channels);
    } else if (avctx->channel_layout != ff_vorbis_channel_layouts[avctx->channels - 1]) {
        char name[32];
        FUNC3(name, sizeof(name), avctx->channels,
                                     avctx->channel_layout);
        FUNC4(avctx, AV_LOG_ERROR,
               "Invalid channel layout %s for specified mapping family %d.\n",
               name, mapping_family);

        return FUNC0(EINVAL);
    }

    return 0;
}