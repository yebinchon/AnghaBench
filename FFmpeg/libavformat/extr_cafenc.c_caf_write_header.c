
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_28__ {int codec_id; int frame_size; int channels; int block_align; int extradata_size; char* extradata; scalar_t__ channel_layout; int sample_rate; } ;
struct TYPE_27__ {int value; int key; } ;
struct TYPE_26__ {int nb_streams; int metadata; TYPE_2__* priv_data; TYPE_1__** streams; TYPE_3__* pb; } ;
struct TYPE_25__ {int seekable; } ;
struct TYPE_24__ {int data; } ;
struct TYPE_23__ {TYPE_6__* codecpar; } ;
typedef TYPE_2__ CAFContext ;
typedef TYPE_3__ AVIOContext ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AVDictionaryEntry ;
typedef TYPE_6__ AVCodecParameters ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AVIO_SEEKABLE_NORMAL ;

 int AV_CODEC_ID_ALAC ;
 int AV_CODEC_ID_AMR_NB ;
 int AV_CODEC_ID_MP3 ;
 int AV_CODEC_ID_OPUS ;
 int AV_CODEC_ID_QDM2 ;
 int AV_CODEC_ID_QDMC ;
 int AV_DICT_IGNORE_SUFFIX ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_dict_count (int ) ;
 TYPE_5__* av_dict_get (int ,char*,TYPE_5__*,int ) ;
 int av_double2int (int ) ;
 int av_get_bits_per_sample (int) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int avio_flush (TYPE_3__*) ;
 int avio_put_str (TYPE_3__*,int ) ;
 int avio_tell (TYPE_3__*) ;
 int avio_w8 (TYPE_3__*,int) ;
 int avio_wb16 (TYPE_3__*,int) ;
 int avio_wb32 (TYPE_3__*,int) ;
 int avio_wb64 (TYPE_3__*,int) ;
 int avio_wl32 (TYPE_3__*,unsigned int) ;
 int avio_write (TYPE_3__*,char*,int) ;
 int codec_flags (int) ;
 int ff_codec_caf_tags ;
 unsigned int ff_codec_get_tag (int ,int) ;
 int ff_mov_write_chan (TYPE_3__*,scalar_t__) ;
 int ff_standardize_creation_time (TYPE_4__*) ;
 int ffio_wfourcc (TYPE_3__*,char*) ;
 int samples_per_packet (int,int,int) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int caf_write_header(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    AVCodecParameters *par = s->streams[0]->codecpar;
    CAFContext *caf = s->priv_data;
    AVDictionaryEntry *t = ((void*)0);
    unsigned int codec_tag = ff_codec_get_tag(ff_codec_caf_tags, par->codec_id);
    int64_t chunk_size = 0;
    int frame_size = par->frame_size;

    if (s->nb_streams != 1) {
        av_log(s, AV_LOG_ERROR, "CAF files have exactly one stream\n");
        return AVERROR(EINVAL);
    }

    switch (par->codec_id) {
    case 128:
        av_log(s, AV_LOG_ERROR, "muxing codec currently unsupported\n");
        return AVERROR_PATCHWELCOME;
    }

    if (par->codec_id == AV_CODEC_ID_OPUS && par->channels > 2) {
        av_log(s, AV_LOG_ERROR, "Only mono and stereo are supported for Opus\n");
        return AVERROR_INVALIDDATA;
    }

    if (!codec_tag) {
        av_log(s, AV_LOG_ERROR, "unsupported codec\n");
        return AVERROR_INVALIDDATA;
    }

    if (!par->block_align && !(pb->seekable & AVIO_SEEKABLE_NORMAL)) {
        av_log(s, AV_LOG_ERROR, "Muxing variable packet size not supported on non seekable output\n");
        return AVERROR_INVALIDDATA;
    }

    if (par->codec_id != AV_CODEC_ID_MP3 || frame_size != 576)
        frame_size = samples_per_packet(par->codec_id, par->channels, par->block_align);

    ffio_wfourcc(pb, "caff");
    avio_wb16(pb, 1);
    avio_wb16(pb, 0);

    ffio_wfourcc(pb, "desc");
    avio_wb64(pb, 32);
    avio_wb64(pb, av_double2int(par->sample_rate));
    avio_wl32(pb, codec_tag);
    avio_wb32(pb, codec_flags(par->codec_id));
    avio_wb32(pb, par->block_align);
    avio_wb32(pb, frame_size);
    avio_wb32(pb, par->channels);
    avio_wb32(pb, av_get_bits_per_sample(par->codec_id));

    if (par->channel_layout) {
        ffio_wfourcc(pb, "chan");
        avio_wb64(pb, 12);
        ff_mov_write_chan(pb, par->channel_layout);
    }

    if (par->codec_id == AV_CODEC_ID_ALAC) {
        ffio_wfourcc(pb, "kuki");
        avio_wb64(pb, 12 + par->extradata_size);
        avio_write(pb, "\0\0\0\14frmaalac", 12);
        avio_write(pb, par->extradata, par->extradata_size);
    } else if (par->codec_id == AV_CODEC_ID_AMR_NB) {
        ffio_wfourcc(pb, "kuki");
        avio_wb64(pb, 29);
        avio_write(pb, "\0\0\0\14frmasamr", 12);
        avio_wb32(pb, 0x11);
        avio_write(pb, "samrFFMP", 8);
        avio_w8(pb, 0);

        avio_wb16(pb, 0x81FF);
        avio_w8(pb, 0x00);
        avio_w8(pb, 0x01);
    } else if (par->codec_id == AV_CODEC_ID_QDM2 || par->codec_id == AV_CODEC_ID_QDMC) {
        ffio_wfourcc(pb, "kuki");
        avio_wb64(pb, par->extradata_size);
        avio_write(pb, par->extradata, par->extradata_size);
    }

    ff_standardize_creation_time(s);
    if (av_dict_count(s->metadata)) {
        ffio_wfourcc(pb, "info");
        while ((t = av_dict_get(s->metadata, "", t, AV_DICT_IGNORE_SUFFIX))) {
            chunk_size += strlen(t->key) + strlen(t->value) + 2;
        }
        avio_wb64(pb, chunk_size + 4);
        avio_wb32(pb, av_dict_count(s->metadata));
        t = ((void*)0);
        while ((t = av_dict_get(s->metadata, "", t, AV_DICT_IGNORE_SUFFIX))) {
            avio_put_str(pb, t->key);
            avio_put_str(pb, t->value);
        }
    }

    ffio_wfourcc(pb, "data");
    caf->data = avio_tell(pb);
    avio_wb64(pb, -1);
    avio_wb32(pb, 0);

    avio_flush(pb);
    return 0;
}
