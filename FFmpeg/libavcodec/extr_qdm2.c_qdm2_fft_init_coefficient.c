
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* fft_coefs_min_index; size_t fft_coefs_index; TYPE_1__* fft_coefs; } ;
struct TYPE_4__ {int sub_packet; int channel; int offset; int exp; int phase; } ;
typedef TYPE_2__ QDM2Context ;



__attribute__((used)) static void qdm2_fft_init_coefficient(QDM2Context *q, int sub_packet,
                                      int offset, int duration, int channel,
                                      int exp, int phase)
{
    if (q->fft_coefs_min_index[duration] < 0)
        q->fft_coefs_min_index[duration] = q->fft_coefs_index;

    q->fft_coefs[q->fft_coefs_index].sub_packet =
        ((sub_packet >= 16) ? (sub_packet - 16) : sub_packet);
    q->fft_coefs[q->fft_coefs_index].channel = channel;
    q->fft_coefs[q->fft_coefs_index].offset = offset;
    q->fft_coefs[q->fft_coefs_index].exp = exp;
    q->fft_coefs[q->fft_coefs_index].phase = phase;
    q->fft_coefs_index++;
}
