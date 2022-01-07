
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int mlp_peak_bitrate(int peak_bitrate, int sample_rate)
{
    return ((peak_bitrate << 4) - 8) / sample_rate;
}
