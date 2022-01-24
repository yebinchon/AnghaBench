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
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {int remap_needed; int nchannels; scalar_t__ channel_map_in; scalar_t__ channel_map_out; int* table; } ;
typedef  TYPE_1__ hb_audio_remap_t ;

/* Variables and functions */
 scalar_t__ AV_CH_LAYOUT_STEREO ; 
 scalar_t__ AV_CH_LAYOUT_STEREO_DOWNMIX ; 
 int HB_AUDIO_REMAP_MAX_CHANNELS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void FUNC3(hb_audio_remap_t *remap,
                                       uint64_t channel_layout)
{
    if (remap != NULL)
    {
        int ii;
        remap->remap_needed = 0;

        // sanitize the layout
        if (channel_layout == AV_CH_LAYOUT_STEREO_DOWNMIX)
        {
            channel_layout = AV_CH_LAYOUT_STEREO;
        }
        remap->nchannels = FUNC0(channel_layout);

        // in some cases, remapping is not necessary and/or supported
        if (remap->nchannels > HB_AUDIO_REMAP_MAX_CHANNELS)
        {
            FUNC2("hb_audio_remap_set_channel_layout: too many channels (%d)",
                   remap->nchannels);
            return;
        }
        if (remap->channel_map_in == remap->channel_map_out)
        {
            return;
        }

        // build the table and check whether remapping is necessary
        FUNC1(remap->channel_map_out,
                                   remap->channel_map_in, channel_layout,
                                   remap->table);
        for (ii = 0; ii < remap->nchannels; ii++)
        {
            if (remap->table[ii] != ii)
            {
                remap->remap_needed = 1;
                break;
            }
        }
    }
}