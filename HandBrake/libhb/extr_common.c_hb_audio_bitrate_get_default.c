
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int HB_ACODEC_MASK ;

 int HB_ACODEC_PASS_FLAG ;
 int hb_audio_bitrate_get_best (int,int,int,int) ;
 int hb_audio_samplerate_get_sr_shift (int) ;
 int hb_mixdown_get_discrete_channel_count (int) ;
 int hb_mixdown_get_low_freq_channel_count (int) ;
 int mixdown_get_opus_coupled_stream_count (int) ;

int hb_audio_bitrate_get_default(uint32_t codec, int samplerate, int mixdown)
{
    if ((codec & HB_ACODEC_PASS_FLAG) || !(codec & HB_ACODEC_MASK))
        goto fail;

    int bitrate, nchannels, nlfe, sr_shift;

    nlfe = hb_mixdown_get_low_freq_channel_count(mixdown);
    nchannels = hb_mixdown_get_discrete_channel_count(mixdown) - nlfe;
    sr_shift = hb_audio_samplerate_get_sr_shift(samplerate);

    switch (codec)
    {
        case 130:
        case 129:
            goto fail;


        case 134:
            bitrate = (nchannels * 128) - (32 * (nchannels < 5));
            break;





        case 131:
            bitrate = (nchannels * 384) - (128 * (nchannels - 2) * (nchannels > 2));
            break;

        case 133:
        case 132:
            bitrate = nchannels * 32;
            break;

        case 128:
        {
            int coupled = mixdown_get_opus_coupled_stream_count(mixdown);
            int uncoupled = nchannels + nlfe - 2 * coupled;

            bitrate = coupled * 96 + uncoupled * 64;
        } break;

        default:
            bitrate = nchannels * 80;
            break;
    }

    bitrate >>= sr_shift;
    return hb_audio_bitrate_get_best(codec, bitrate, samplerate, mixdown);

fail:
    return -1;
}
