
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int lsf; int layer; int sample_rate_index; int error_protection; int sample_rate; int mode; int mode_ext; int nb_channels; int bit_rate; int frame_size; } ;
typedef TYPE_1__ MPADecodeHeader ;


 int FF_ARRAY_ELEMS (int*) ;
 int MODE_EXT_I_STEREO ;
 int MODE_EXT_MS_STEREO ;
 int MPA_MONO ;
 int*** avpriv_mpa_bitrate_tab ;
 int* avpriv_mpa_freq_tab ;
 int ff_dlog (int *,char*,...) ;
 int ff_mpa_check_header (int) ;

int avpriv_mpegaudio_decode_header(MPADecodeHeader *s, uint32_t header)
{
    int sample_rate, frame_size, mpeg25, padding;
    int sample_rate_index, bitrate_index;
    int ret;

    ret = ff_mpa_check_header(header);
    if (ret < 0)
        return ret;

    if (header & (1<<20)) {
        s->lsf = (header & (1<<19)) ? 0 : 1;
        mpeg25 = 0;
    } else {
        s->lsf = 1;
        mpeg25 = 1;
    }

    s->layer = 4 - ((header >> 17) & 3);

    sample_rate_index = (header >> 10) & 3;
    if (sample_rate_index >= FF_ARRAY_ELEMS(avpriv_mpa_freq_tab))
        sample_rate_index = 0;
    sample_rate = avpriv_mpa_freq_tab[sample_rate_index] >> (s->lsf + mpeg25);
    sample_rate_index += 3 * (s->lsf + mpeg25);
    s->sample_rate_index = sample_rate_index;
    s->error_protection = ((header >> 16) & 1) ^ 1;
    s->sample_rate = sample_rate;

    bitrate_index = (header >> 12) & 0xf;
    padding = (header >> 9) & 1;

    s->mode = (header >> 6) & 3;
    s->mode_ext = (header >> 4) & 3;




    if (s->mode == MPA_MONO)
        s->nb_channels = 1;
    else
        s->nb_channels = 2;

    if (bitrate_index != 0) {
        frame_size = avpriv_mpa_bitrate_tab[s->lsf][s->layer - 1][bitrate_index];
        s->bit_rate = frame_size * 1000;
        switch(s->layer) {
        case 1:
            frame_size = (frame_size * 12000) / sample_rate;
            frame_size = (frame_size + padding) * 4;
            break;
        case 2:
            frame_size = (frame_size * 144000) / sample_rate;
            frame_size += padding;
            break;
        default:
        case 3:
            frame_size = (frame_size * 144000) / (sample_rate << s->lsf);
            frame_size += padding;
            break;
        }
        s->frame_size = frame_size;
    } else {

        return 1;
    }
    return 0;
}
