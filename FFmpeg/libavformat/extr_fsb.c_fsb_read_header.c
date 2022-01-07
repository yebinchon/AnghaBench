
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_14__ {int sample_rate; int channels; int codec_id; int block_align; int bits_per_coded_sample; scalar_t__ extradata; scalar_t__ codec_tag; int codec_type; } ;
struct TYPE_13__ {TYPE_1__* internal; int * pb; } ;
struct TYPE_12__ {int duration; TYPE_4__* codecpar; } ;
struct TYPE_11__ {int data_offset; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_ADPCM_IMA_WAV ;
 int AV_CODEC_ID_ADPCM_PSX ;

 int AV_CODEC_ID_PCM_S16LE ;

 int ENOMEM ;
 int INT_MAX ;
 int SEEK_SET ;
 int av_assert0 (int ) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 unsigned int avio_r8 (int *) ;
 unsigned int avio_rb32 (int *) ;
 int avio_read (int *,scalar_t__,int) ;
 void* avio_rl16 (int *) ;
 int avio_rl32 (int *) ;
 int avio_seek (int *,int,int ) ;
 int avio_skip (int *,int) ;
 int avio_tell (int *) ;
 int avpriv_request_sample (TYPE_3__*,char*,unsigned int) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;
 int ff_alloc_extradata (TYPE_4__*,int) ;
 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static int fsb_read_header(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    unsigned format, version, c;
    int64_t offset;
    AVCodecParameters *par;
    AVStream *st = avformat_new_stream(s, ((void*)0));

    avio_skip(pb, 3);
    version = avio_r8(pb) - '0';
    if (version != 4 && version != 3) {
        avpriv_request_sample(s, "version %d", version);
        return AVERROR_PATCHWELCOME;
    }

    avio_skip(pb, 4);

    if (!st)
        return AVERROR(ENOMEM);
    par = st->codecpar;
    par->codec_type = AVMEDIA_TYPE_AUDIO;
    par->codec_tag = 0;

    if (version == 3) {
        offset = avio_rl32(pb) + 0x18;
        avio_skip(pb, 44);
        st->duration = avio_rl32(pb);
        avio_skip(pb, 12);
        format = avio_rl32(pb);
        par->sample_rate = avio_rl32(pb);
        if (par->sample_rate <= 0)
            return AVERROR_INVALIDDATA;
        avio_skip(pb, 6);
        par->channels = avio_rl16(pb);
        if (!par->channels)
            return AVERROR_INVALIDDATA;

        if (format & 0x00000100) {
            par->codec_id = AV_CODEC_ID_PCM_S16LE;
            par->block_align = 4096 * par->channels;
        } else if (format & 0x00400000) {
            par->bits_per_coded_sample = 4;
            par->codec_id = AV_CODEC_ID_ADPCM_IMA_WAV;
            par->block_align = 36 * par->channels;
        } else if (format & 0x00800000) {
            par->codec_id = AV_CODEC_ID_ADPCM_PSX;
            par->block_align = 16 * par->channels;
        } else if (format & 0x02000000) {
            par->codec_id = 129;
            par->block_align = 8 * par->channels;
            if (par->channels > INT_MAX / 32)
                return AVERROR_INVALIDDATA;
            ff_alloc_extradata(par, 32 * par->channels);
            if (!par->extradata)
                return AVERROR(ENOMEM);
            avio_seek(pb, 0x68, SEEK_SET);
            for (c = 0; c < par->channels; c++) {
                avio_read(pb, par->extradata + 32 * c, 32);
                avio_skip(pb, 14);
            }
        } else {
            avpriv_request_sample(s, "format 0x%X", format);
            return AVERROR_PATCHWELCOME;
        }
    } else if (version == 4) {
        offset = avio_rl32(pb) + 0x30;
        avio_skip(pb, 80);
        st->duration = avio_rl32(pb);

        format = avio_rb32(pb);
        switch(format) {
        case 0x40001001:
        case 0x00001005:
        case 0x40001081:
        case 0x40200001:
            par->codec_id = 128;
            break;
        case 0x40000802:
            par->codec_id = 129;
            break;
        default:
            avpriv_request_sample(s, "format 0x%X", format);
            return AVERROR_PATCHWELCOME;
        }

        par->sample_rate = avio_rl32(pb);
        if (par->sample_rate <= 0)
            return AVERROR_INVALIDDATA;
        avio_skip(pb, 6);

        par->channels = avio_rl16(pb);
        if (!par->channels)
            return AVERROR_INVALIDDATA;

        switch (par->codec_id) {
        case 128:
            ff_alloc_extradata(par, 34);
            if (!par->extradata)
                return AVERROR(ENOMEM);
            memset(par->extradata, 0, 34);
            par->block_align = 2048;
            break;
        case 129:
            if (par->channels > INT_MAX / 32)
                return AVERROR_INVALIDDATA;
            ff_alloc_extradata(par, 32 * par->channels);
            if (!par->extradata)
                return AVERROR(ENOMEM);
            avio_seek(pb, 0x80, SEEK_SET);
            for (c = 0; c < par->channels; c++) {
                avio_read(pb, par->extradata + 32 * c, 32);
                avio_skip(pb, 14);
            }
            par->block_align = 8 * par->channels;
            break;
        }
    } else {
        av_assert0(0);
    }

    avio_skip(pb, offset - avio_tell(pb));
    s->internal->data_offset = avio_tell(pb);

    avpriv_set_pts_info(st, 64, 1, par->sample_rate);

    return 0;
}
