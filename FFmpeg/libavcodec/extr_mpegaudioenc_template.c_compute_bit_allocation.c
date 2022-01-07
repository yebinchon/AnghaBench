
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_channels; int frame_size; int frame_frac; int do_padding; unsigned char* alloc_table; int sblimit; size_t** scale_code; int* total_quant_bits; scalar_t__ frame_frac_incr; } ;
typedef TYPE_1__ MpegAudioContext ;


 int INT_MIN ;
 int MPA_MAX_CHANNELS ;
 int SBLIMIT ;
 unsigned char SB_ALLOCATED ;
 unsigned char SB_NOMORE ;
 unsigned char SB_NOTALLOCATED ;
 int av_assert0 (int) ;
 int ff_dlog (int *,char*,int,int,int,int,unsigned char) ;
 int memcpy (short**,short**,int) ;
 int memset (unsigned char**,unsigned char,int) ;
 int* nb_scale_factors ;
 short* quant_snr ;

__attribute__((used)) static void compute_bit_allocation(MpegAudioContext *s,
                                   short smr1[MPA_MAX_CHANNELS][SBLIMIT],
                                   unsigned char bit_alloc[MPA_MAX_CHANNELS][SBLIMIT],
                                   int *padding)
{
    int i, ch, b, max_smr, max_ch, max_sb, current_frame_size, max_frame_size;
    int incr;
    short smr[MPA_MAX_CHANNELS][SBLIMIT];
    unsigned char subband_status[MPA_MAX_CHANNELS][SBLIMIT];
    const unsigned char *alloc;

    memcpy(smr, smr1, s->nb_channels * sizeof(short) * SBLIMIT);
    memset(subband_status, SB_NOTALLOCATED, s->nb_channels * SBLIMIT);
    memset(bit_alloc, 0, s->nb_channels * SBLIMIT);


    max_frame_size = s->frame_size;
    s->frame_frac += s->frame_frac_incr;
    if (s->frame_frac >= 65536) {
        s->frame_frac -= 65536;
        s->do_padding = 1;
        max_frame_size += 8;
    } else {
        s->do_padding = 0;
    }


    current_frame_size = 32;
    alloc = s->alloc_table;
    for(i=0;i<s->sblimit;i++) {
        incr = alloc[0];
        current_frame_size += incr * s->nb_channels;
        alloc += 1 << incr;
    }
    for(;;) {

        max_sb = -1;
        max_ch = -1;
        max_smr = INT_MIN;
        for(ch=0;ch<s->nb_channels;ch++) {
            for(i=0;i<s->sblimit;i++) {
                if (smr[ch][i] > max_smr && subband_status[ch][i] != SB_NOMORE) {
                    max_smr = smr[ch][i];
                    max_sb = i;
                    max_ch = ch;
                }
            }
        }
        if (max_sb < 0)
            break;
        ff_dlog(((void*)0), "current=%d max=%d max_sb=%d max_ch=%d alloc=%d\n",
                current_frame_size, max_frame_size, max_sb, max_ch,
                bit_alloc[max_ch][max_sb]);



        alloc = s->alloc_table;
        for(i=0;i<max_sb;i++) {
            alloc += 1 << alloc[0];
        }

        if (subband_status[max_ch][max_sb] == SB_NOTALLOCATED) {

            incr = 2 + nb_scale_factors[s->scale_code[max_ch][max_sb]] * 6;
            incr += s->total_quant_bits[alloc[1]];
        } else {

            b = bit_alloc[max_ch][max_sb];
            incr = s->total_quant_bits[alloc[b + 1]] -
                s->total_quant_bits[alloc[b]];
        }

        if (current_frame_size + incr <= max_frame_size) {

            b = ++bit_alloc[max_ch][max_sb];
            current_frame_size += incr;

            smr[max_ch][max_sb] = smr1[max_ch][max_sb] - quant_snr[alloc[b]];

            if (b == ((1 << alloc[0]) - 1))
                subband_status[max_ch][max_sb] = SB_NOMORE;
            else
                subband_status[max_ch][max_sb] = SB_ALLOCATED;
        } else {

            subband_status[max_ch][max_sb] = SB_NOMORE;
        }
    }
    *padding = max_frame_size - current_frame_size;
    av_assert0(*padding >= 0);
}
