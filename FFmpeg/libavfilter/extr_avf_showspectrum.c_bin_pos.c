
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inv_log_scale (float const,int,float const) ;

__attribute__((used)) static float bin_pos(const int bin, const int num_bins, const float sample_rate)
{
    const float max_freq = sample_rate / 2;
    const float hz_per_bin = max_freq / num_bins;
    const float freq = hz_per_bin * bin;
    const float scaled_freq = inv_log_scale(freq + 1, 21, max_freq) - 1;

    return num_bins * scaled_freq / max_freq;
}
