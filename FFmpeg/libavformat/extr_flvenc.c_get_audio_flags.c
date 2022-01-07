
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits_per_coded_sample; int codec_id; int sample_rate; int channels; int codec_tag; } ;
typedef int AVFormatContext ;
typedef TYPE_1__ AVCodecParameters ;


 int AVERROR (int ) ;
 int AV_CODEC_ID_AAC ;
 int AV_CODEC_ID_SPEEX ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int FLV_CODECID_AAC ;
 int FLV_CODECID_ADPCM ;
 int FLV_CODECID_MP3 ;
 int FLV_CODECID_NELLYMOSER ;
 int FLV_CODECID_NELLYMOSER_16KHZ_MONO ;
 int FLV_CODECID_NELLYMOSER_8KHZ_MONO ;
 int FLV_CODECID_PCM ;
 int FLV_CODECID_PCM_ALAW ;
 int FLV_CODECID_PCM_LE ;
 int FLV_CODECID_PCM_MULAW ;
 int FLV_CODECID_SPEEX ;
 int FLV_SAMPLERATE_11025HZ ;
 int FLV_SAMPLERATE_22050HZ ;
 int FLV_SAMPLERATE_44100HZ ;
 int FLV_SAMPLERATE_SPECIAL ;
 int FLV_SAMPLESSIZE_16BIT ;
 int FLV_SAMPLESSIZE_8BIT ;
 int FLV_STEREO ;
 int av_log (int *,int ,char*,...) ;
 int avcodec_get_name (int) ;

__attribute__((used)) static int get_audio_flags(AVFormatContext *s, AVCodecParameters *par)
{
    int flags = (par->bits_per_coded_sample == 16) ? FLV_SAMPLESSIZE_16BIT
                                                   : FLV_SAMPLESSIZE_8BIT;

    if (par->codec_id == AV_CODEC_ID_AAC)
        return FLV_CODECID_AAC | FLV_SAMPLERATE_44100HZ |
               FLV_SAMPLESSIZE_16BIT | FLV_STEREO;
    else if (par->codec_id == AV_CODEC_ID_SPEEX) {
        if (par->sample_rate != 16000) {
            av_log(s, AV_LOG_ERROR,
                   "FLV only supports wideband (16kHz) Speex audio\n");
            return AVERROR(EINVAL);
        }
        if (par->channels != 1) {
            av_log(s, AV_LOG_ERROR, "FLV only supports mono Speex audio\n");
            return AVERROR(EINVAL);
        }
        return FLV_CODECID_SPEEX | FLV_SAMPLERATE_11025HZ | FLV_SAMPLESSIZE_16BIT;
    } else {
        switch (par->sample_rate) {
        case 48000:

            if (par->codec_id == 134) {
                flags |= FLV_SAMPLERATE_44100HZ;
                break;
            } else {
                goto error;
            }
        case 44100:
            flags |= FLV_SAMPLERATE_44100HZ;
            break;
        case 22050:
            flags |= FLV_SAMPLERATE_22050HZ;
            break;
        case 11025:
            flags |= FLV_SAMPLERATE_11025HZ;
            break;
        case 16000:
        case 8000:
        case 5512:
            if (par->codec_id != 134) {
                flags |= FLV_SAMPLERATE_SPECIAL;
                break;
            }
        default:
error:
            av_log(s, AV_LOG_ERROR,
                   "FLV does not support sample rate %d, "
                   "choose from (44100, 22050, 11025)\n", par->sample_rate);
            return AVERROR(EINVAL);
        }
    }

    if (par->channels > 1)
        flags |= FLV_STEREO;

    switch (par->codec_id) {
    case 134:
        flags |= FLV_CODECID_MP3 | FLV_SAMPLESSIZE_16BIT;
        break;
    case 128:
        flags |= FLV_CODECID_PCM | FLV_SAMPLESSIZE_8BIT;
        break;
    case 130:
        flags |= FLV_CODECID_PCM | FLV_SAMPLESSIZE_16BIT;
        break;
    case 129:
        flags |= FLV_CODECID_PCM_LE | FLV_SAMPLESSIZE_16BIT;
        break;
    case 135:
        flags |= FLV_CODECID_ADPCM | FLV_SAMPLESSIZE_16BIT;
        break;
    case 133:
        if (par->sample_rate == 8000)
            flags |= FLV_CODECID_NELLYMOSER_8KHZ_MONO | FLV_SAMPLESSIZE_16BIT;
        else if (par->sample_rate == 16000)
            flags |= FLV_CODECID_NELLYMOSER_16KHZ_MONO | FLV_SAMPLESSIZE_16BIT;
        else
            flags |= FLV_CODECID_NELLYMOSER | FLV_SAMPLESSIZE_16BIT;
        break;
    case 131:
        flags = FLV_CODECID_PCM_MULAW | FLV_SAMPLERATE_SPECIAL | FLV_SAMPLESSIZE_16BIT;
        break;
    case 132:
        flags = FLV_CODECID_PCM_ALAW | FLV_SAMPLERATE_SPECIAL | FLV_SAMPLESSIZE_16BIT;
        break;
    case 0:
        flags |= par->codec_tag << 4;
        break;
    default:
        av_log(s, AV_LOG_ERROR, "Audio codec '%s' not compatible with FLV\n",
               avcodec_get_name(par->codec_id));
        return AVERROR(EINVAL);
    }

    return flags;
}
