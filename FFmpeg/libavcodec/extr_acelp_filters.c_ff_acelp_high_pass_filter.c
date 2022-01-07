
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int av_clip_int16 (int) ;

void ff_acelp_high_pass_filter(int16_t* out, int hpf_f[2],
                               const int16_t* in, int length)
{
    int i;
    int tmp;

    for (i = 0; i < length; i++) {
        tmp = (hpf_f[0]* 15836LL) >> 13;
        tmp += (hpf_f[1]* -7667LL) >> 13;
        tmp += 7699 * (in[i] - 2*in[i-1] + in[i-2]);



        out[i] = av_clip_int16((tmp + 0x800) >> 12);

        hpf_f[1] = hpf_f[0];
        hpf_f[0] = tmp;
    }
}
