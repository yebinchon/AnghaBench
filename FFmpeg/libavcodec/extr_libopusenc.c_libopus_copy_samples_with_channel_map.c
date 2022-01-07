
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int*,int const*,int) ;

__attribute__((used)) static void libopus_copy_samples_with_channel_map(
    uint8_t *dst, const uint8_t *src, const uint8_t *channel_map,
    int nb_channels, int nb_samples, int bytes_per_sample) {
    int sample, channel;
    for (sample = 0; sample < nb_samples; ++sample) {
        for (channel = 0; channel < nb_channels; ++channel) {
            const size_t src_pos = bytes_per_sample * (nb_channels * sample + channel);
            const size_t dst_pos = bytes_per_sample * (nb_channels * sample + channel_map[channel]);

            memcpy(&dst[dst_pos], &src[src_pos], bytes_per_sample);
        }
    }
}
