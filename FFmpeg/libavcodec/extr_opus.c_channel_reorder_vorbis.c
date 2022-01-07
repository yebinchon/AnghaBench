
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int** ff_vorbis_channel_layout_offsets ;

__attribute__((used)) static int channel_reorder_vorbis(int nb_channels, int channel_idx)
{
    return ff_vorbis_channel_layout_offsets[nb_channels - 1][channel_idx];
}
