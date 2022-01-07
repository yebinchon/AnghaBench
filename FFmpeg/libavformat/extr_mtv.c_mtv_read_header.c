
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_13__ {int need_parsing; TYPE_1__* codecpar; } ;
struct TYPE_12__ {int audio_br; int img_bpp; int img_width; int img_height; int img_segment_size; unsigned int full_segment_size; int video_fps; void* img_colorfmt; void* audio_identifier; void* segments; void* file_size; } ;
struct TYPE_11__ {int width; int height; int extradata_size; int bit_rate; int codec_id; int codec_type; int extradata; int format; } ;
typedef TYPE_2__ MTVDemuxContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AVSTREAM_PARSE_FULL ;
 int AV_CODEC_ID_MP3 ;
 int AV_CODEC_ID_RAWVIDEO ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int AV_PIX_FMT_RGB565BE ;
 int EIO ;
 int ENOMEM ;
 unsigned int MTV_ASUBCHUNK_DATA_SIZE ;
 unsigned int MTV_AUDIO_PADDING_SIZE ;
 int MTV_AUDIO_SAMPLING_RATE ;
 scalar_t__ MTV_HEADER_SIZE ;
 int MTV_IMAGE_DEFAULT_BPP ;
 int SEEK_SET ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 int av_strdup (char*) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avio_r8 (int *) ;
 void* avio_rl16 (int *) ;
 void* avio_rl24 (int *) ;
 void* avio_rl32 (int *) ;
 scalar_t__ avio_seek (int *,scalar_t__,int ) ;
 int avio_skip (int *,int) ;
 int avpriv_request_sample (TYPE_4__*,char*) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;

__attribute__((used)) static int mtv_read_header(AVFormatContext *s)
{
    MTVDemuxContext *mtv = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st;
    unsigned int audio_subsegments;

    avio_skip(pb, 3);
    mtv->file_size = avio_rl32(pb);
    mtv->segments = avio_rl32(pb);
    avio_skip(pb, 32);
    mtv->audio_identifier = avio_rl24(pb);
    mtv->audio_br = avio_rl16(pb);
    mtv->img_colorfmt = avio_rl24(pb);
    mtv->img_bpp = avio_r8(pb);
    mtv->img_width = avio_rl16(pb);
    mtv->img_height = avio_rl16(pb);
    mtv->img_segment_size = avio_rl16(pb);




    if (mtv->img_bpp != MTV_IMAGE_DEFAULT_BPP) {
        av_log (s, AV_LOG_WARNING, "Header claims %dbpp (!= 16). Ignoring\n",
                mtv->img_bpp);
        mtv->img_bpp = MTV_IMAGE_DEFAULT_BPP;
    }



    if (!mtv->img_width && mtv->img_height > 0 && mtv->img_bpp >= 8)
        mtv->img_width=mtv->img_segment_size / (mtv->img_bpp>>3)
                        / mtv->img_height;

    if (!mtv->img_height && mtv->img_width > 0 && mtv->img_bpp >= 8)
        mtv->img_height=mtv->img_segment_size / (mtv->img_bpp>>3)
                        / mtv->img_width;

    if(!mtv->img_height || !mtv->img_width || !mtv->img_segment_size){
        av_log(s, AV_LOG_ERROR, "width or height or segment_size is invalid and I cannot calculate them from other information\n");
        return AVERROR_INVALIDDATA;
    }

    avio_skip(pb, 4);
    audio_subsegments = avio_rl16(pb);

    if (audio_subsegments == 0) {
        avpriv_request_sample(s, "MTV files without audio");
        return AVERROR_PATCHWELCOME;
    }

    mtv->full_segment_size =
        audio_subsegments * (MTV_AUDIO_PADDING_SIZE + MTV_ASUBCHUNK_DATA_SIZE) +
        mtv->img_segment_size;
    mtv->video_fps = (mtv->audio_br / 4) / audio_subsegments;







    st = avformat_new_stream(s, ((void*)0));
    if(!st)
        return AVERROR(ENOMEM);

    avpriv_set_pts_info(st, 64, 1, mtv->video_fps);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_RAWVIDEO;
    st->codecpar->format = AV_PIX_FMT_RGB565BE;
    st->codecpar->width = mtv->img_width;
    st->codecpar->height = mtv->img_height;
    st->codecpar->extradata = av_strdup("BottomUp");
    if (!st->codecpar->extradata)
        return AVERROR(ENOMEM);
    st->codecpar->extradata_size = 9;



    st = avformat_new_stream(s, ((void*)0));
    if(!st)
        return AVERROR(ENOMEM);

    avpriv_set_pts_info(st, 64, 1, MTV_AUDIO_SAMPLING_RATE);
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_MP3;
    st->codecpar->bit_rate = mtv->audio_br;
    st->need_parsing = AVSTREAM_PARSE_FULL;



    if(avio_seek(pb, MTV_HEADER_SIZE, SEEK_SET) != MTV_HEADER_SIZE)
        return AVERROR(EIO);

    return 0;

}
