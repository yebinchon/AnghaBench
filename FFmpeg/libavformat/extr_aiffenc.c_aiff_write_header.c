
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_12__ {int audio_stream_idx; void* ssnd; void* frames; void* form; } ;
struct TYPE_11__ {scalar_t__ codec_type; scalar_t__ codec_tag; int block_align; int channels; int bits_per_coded_sample; int extradata_size; int sample_rate; int extradata; int codec_id; scalar_t__ channel_layout; } ;
struct TYPE_10__ {int nb_streams; TYPE_1__** streams; int * pb; TYPE_4__* priv_data; } ;
struct TYPE_9__ {TYPE_3__* codecpar; } ;
typedef TYPE_1__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVCodecParameters ;
typedef TYPE_4__ AIFFOutputContext ;


 int AVERROR (int ) ;
 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 scalar_t__ MKTAG (char,char,char,char) ;
 int UINT64_C (int) ;
 int av_double2int (int ) ;
 int av_get_bits_per_sample (int ) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int avio_flush (int *) ;
 void* avio_tell (int *) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int avio_wb64 (int *,int) ;
 int avio_wl32 (int *,scalar_t__) ;
 int avio_write (int *,int ,int) ;
 int avpriv_set_pts_info (TYPE_1__*,int,int,int ) ;
 int ff_mov_write_chan (int *,scalar_t__) ;
 int ffio_wfourcc (int *,char*) ;
 int put_meta (TYPE_2__*,char*,scalar_t__) ;

__attribute__((used)) static int aiff_write_header(AVFormatContext *s)
{
    AIFFOutputContext *aiff = s->priv_data;
    AVIOContext *pb = s->pb;
    AVCodecParameters *par;
    uint64_t sample_rate;
    int i, aifc = 0;

    aiff->audio_stream_idx = -1;
    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        if (aiff->audio_stream_idx < 0 && st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) {
            aiff->audio_stream_idx = i;
        } else if (st->codecpar->codec_type != AVMEDIA_TYPE_VIDEO) {
            av_log(s, AV_LOG_ERROR, "AIFF allows only one audio stream and a picture.\n");
            return AVERROR(EINVAL);
        }
    }
    if (aiff->audio_stream_idx < 0) {
        av_log(s, AV_LOG_ERROR, "No audio stream present.\n");
        return AVERROR(EINVAL);
    }

    par = s->streams[aiff->audio_stream_idx]->codecpar;


    if (!par->codec_tag)
        return AVERROR(EINVAL);
    if (par->codec_tag != MKTAG('N','O','N','E'))
        aifc = 1;


    ffio_wfourcc(pb, "FORM");
    aiff->form = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, aifc ? "AIFC" : "AIFF");

    if (aifc) {
        if (!par->block_align) {
            av_log(s, AV_LOG_ERROR, "block align not set\n");
            return AVERROR(EINVAL);
        }

        ffio_wfourcc(pb, "FVER");
        avio_wb32(pb, 4);
        avio_wb32(pb, 0xA2805140);
    }

    if (par->channels > 2 && par->channel_layout) {
        ffio_wfourcc(pb, "CHAN");
        avio_wb32(pb, 12);
        ff_mov_write_chan(pb, par->channel_layout);
    }

    put_meta(s, "title", MKTAG('N', 'A', 'M', 'E'));
    put_meta(s, "author", MKTAG('A', 'U', 'T', 'H'));
    put_meta(s, "copyright", MKTAG('(', 'c', ')', ' '));
    put_meta(s, "comment", MKTAG('A', 'N', 'N', 'O'));


    ffio_wfourcc(pb, "COMM");
    avio_wb32(pb, aifc ? 24 : 18);
    avio_wb16(pb, par->channels);

    aiff->frames = avio_tell(pb);
    avio_wb32(pb, 0);

    if (!par->bits_per_coded_sample)
        par->bits_per_coded_sample = av_get_bits_per_sample(par->codec_id);
    if (!par->bits_per_coded_sample) {
        av_log(s, AV_LOG_ERROR, "could not compute bits per sample\n");
        return AVERROR(EINVAL);
    }
    if (!par->block_align)
        par->block_align = (par->bits_per_coded_sample * par->channels) >> 3;

    avio_wb16(pb, par->bits_per_coded_sample);

    sample_rate = av_double2int(par->sample_rate);
    avio_wb16(pb, (sample_rate >> 52) + (16383 - 1023));
    avio_wb64(pb, UINT64_C(1) << 63 | sample_rate << 11);

    if (aifc) {
        avio_wl32(pb, par->codec_tag);
        avio_wb16(pb, 0);
    }

    if ( (par->codec_tag == MKTAG('Q','D','M','2')
        || par->codec_tag == MKTAG('Q','c','l','p')) && par->extradata_size) {
        ffio_wfourcc(pb, "wave");
        avio_wb32(pb, par->extradata_size);
        avio_write(pb, par->extradata, par->extradata_size);
    }


    ffio_wfourcc(pb, "SSND");
    aiff->ssnd = avio_tell(pb);
    avio_wb32(pb, 0);
    avio_wb32(pb, 0);
    avio_wb32(pb, 0);

    avpriv_set_pts_info(s->streams[aiff->audio_stream_idx], 64, 1,
                        s->streams[aiff->audio_stream_idx]->codecpar->sample_rate);


    avio_flush(pb);

    return 0;
}
