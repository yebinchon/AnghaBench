
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pb; } ;
typedef TYPE_1__ MpegEncContext ;


 int av_log2_16bit (int) ;
 int av_mod_uintp2 (int,int) ;
 int* ff_mpeg12_vlc_dc_chroma_bits ;
 int* ff_mpeg12_vlc_dc_chroma_code ;
 int* ff_mpeg12_vlc_dc_lum_bits ;
 int* ff_mpeg12_vlc_dc_lum_code ;
 int* mpeg1_chr_dc_uni ;
 int* mpeg1_lum_dc_uni ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static inline void encode_dc(MpegEncContext *s, int diff, int component)
{
    unsigned int diff_u = diff + 255;
    if (diff_u >= 511) {
        int index;

        if (diff < 0) {
            index = av_log2_16bit(-2 * diff);
            diff--;
        } else {
            index = av_log2_16bit(2 * diff);
        }
        if (component == 0)
            put_bits(&s->pb,
                     ff_mpeg12_vlc_dc_lum_bits[index] + index,
                     (ff_mpeg12_vlc_dc_lum_code[index] << index) +
                     av_mod_uintp2(diff, index));
        else
            put_bits(&s->pb,
                     ff_mpeg12_vlc_dc_chroma_bits[index] + index,
                     (ff_mpeg12_vlc_dc_chroma_code[index] << index) +
                     av_mod_uintp2(diff, index));
    } else {
        if (component == 0)
            put_bits(&s->pb,
                     mpeg1_lum_dc_uni[diff + 255] & 0xFF,
                     mpeg1_lum_dc_uni[diff + 255] >> 8);
        else
            put_bits(&s->pb,
                     mpeg1_chr_dc_uni[diff + 255] & 0xFF,
                     mpeg1_chr_dc_uni[diff + 255] >> 8);
    }
}
