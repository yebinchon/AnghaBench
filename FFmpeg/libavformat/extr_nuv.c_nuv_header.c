
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int error_recognition; int * pb; TYPE_2__* priv_data; } ;
struct TYPE_16__ {int index; TYPE_1__* codecpar; void* avg_frame_rate; void* r_frame_rate; void* sample_aspect_ratio; } ;
struct TYPE_15__ {int v_id; int a_id; int rtjpg_video; } ;
struct TYPE_14__ {scalar_t__ codec_id; int width; int height; int bits_per_coded_sample; int channels; int sample_rate; int bit_rate; int block_align; int channel_layout; int codec_type; } ;
typedef TYPE_2__ NUVContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CH_LAYOUT_STEREO ;
 scalar_t__ AV_CODEC_ID_NUV ;
 scalar_t__ AV_CODEC_ID_PCM_S16LE ;
 int AV_EF_EXPLODE ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 void* av_d2q (double,int) ;
 int av_image_check_size (int,int,int ,TYPE_4__*) ;
 double av_int2double (int ) ;
 int av_log (TYPE_4__*,int ,char*,double) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avio_r8 (int *) ;
 int avio_read (int *,char*,int) ;
 int avio_rl32 (int *) ;
 int avio_rl64 (int *) ;
 int avio_skip (int *,int) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int get_codec_data (TYPE_4__*,int *,TYPE_3__*,TYPE_3__*,int) ;
 int memcmp (char*,char*,int) ;

__attribute__((used)) static int nuv_header(AVFormatContext *s)
{
    NUVContext *ctx = s->priv_data;
    AVIOContext *pb = s->pb;
    char id_string[12];
    double aspect, fps;
    int is_mythtv, width, height, v_packs, a_packs, ret;
    AVStream *vst = ((void*)0), *ast = ((void*)0);

    avio_read(pb, id_string, 12);
    is_mythtv = !memcmp(id_string, "MythTVVideo", 12);
    avio_skip(pb, 5);
    avio_skip(pb, 3);
    width = avio_rl32(pb);
    height = avio_rl32(pb);
    avio_rl32(pb);
    avio_rl32(pb);
    avio_r8(pb);
    avio_skip(pb, 3);
    aspect = av_int2double(avio_rl64(pb));
    if (aspect > 0.9999 && aspect < 1.0001)
        aspect = 4.0 / 3.0;
    fps = av_int2double(avio_rl64(pb));
    if (fps < 0.0f) {
        if (s->error_recognition & AV_EF_EXPLODE) {
            av_log(s, AV_LOG_ERROR, "Invalid frame rate %f\n", fps);
            return AVERROR_INVALIDDATA;
        } else {
            av_log(s, AV_LOG_WARNING, "Invalid frame rate %f, setting to 0.\n", fps);
            fps = 0.0f;
        }
    }


    v_packs = avio_rl32(pb);
    a_packs = avio_rl32(pb);
    avio_rl32(pb);

    avio_rl32(pb);

    if (v_packs) {
        vst = avformat_new_stream(s, ((void*)0));
        if (!vst)
            return AVERROR(ENOMEM);
        ctx->v_id = vst->index;

        ret = av_image_check_size(width, height, 0, s);
        if (ret < 0)
            return ret;

        vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
        vst->codecpar->codec_id = AV_CODEC_ID_NUV;
        vst->codecpar->width = width;
        vst->codecpar->height = height;
        vst->codecpar->bits_per_coded_sample = 10;
        vst->sample_aspect_ratio = av_d2q(aspect * height / width,
                                                   10000);



        vst->avg_frame_rate = av_d2q(fps, 60000);
        avpriv_set_pts_info(vst, 32, 1, 1000);
    } else
        ctx->v_id = -1;

    if (a_packs) {
        ast = avformat_new_stream(s, ((void*)0));
        if (!ast)
            return AVERROR(ENOMEM);
        ctx->a_id = ast->index;

        ast->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        ast->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE;
        ast->codecpar->channels = 2;
        ast->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;
        ast->codecpar->sample_rate = 44100;
        ast->codecpar->bit_rate = 2 * 2 * 44100 * 8;
        ast->codecpar->block_align = 2 * 2;
        ast->codecpar->bits_per_coded_sample = 16;
        avpriv_set_pts_info(ast, 32, 1, 1000);
    } else
        ctx->a_id = -1;

    if ((ret = get_codec_data(s, pb, vst, ast, is_mythtv)) < 0)
        return ret;

    ctx->rtjpg_video = vst && vst->codecpar->codec_id == AV_CODEC_ID_NUV;

    return 0;
}
