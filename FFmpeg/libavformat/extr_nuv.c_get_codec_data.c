
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nuv_frametype ;
struct TYPE_6__ {int codec_id; void* bits_per_coded_sample; void* codec_tag; int channel_layout; void* channels; void* sample_rate; int extradata_size; int extradata; } ;
struct TYPE_5__ {int need_parsing; TYPE_4__* codecpar; } ;
typedef TYPE_1__ AVStream ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVSTREAM_PARSE_FULL ;
 int AV_CODEC_ID_NONE ;
 int AV_CODEC_ID_NUV ;
 int AV_CODEC_ID_PCM_S16LE ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 void* MKTAG (char,char,char,char) ;



 int PKTSIZE (void*) ;
 int av_freep (int *) ;
 int av_log (int *,int ,char*,void*) ;
 int avio_feof (int *) ;
 int avio_r8 (int *) ;
 void* avio_rl32 (int *) ;
 int avio_skip (int *,int) ;
 int ff_codec_bmp_tags ;
 void* ff_codec_get_id (int ,void*) ;
 int ff_get_extradata (int *,TYPE_4__*,int *,int) ;
 int ff_get_pcm_codec_id (void*,int ,int ,int) ;
 int ff_wav_codec_get_id (void*,void*) ;
 int nuv_audio_tags ;

__attribute__((used)) static int get_codec_data(AVFormatContext *s, AVIOContext *pb, AVStream *vst,
                          AVStream *ast, int myth)
{
    nuv_frametype frametype;

    if (!vst && !myth)
        return 1;
    while (!avio_feof(pb)) {
        int size, subtype;

        frametype = avio_r8(pb);
        switch (frametype) {
        case 130:
            subtype = avio_r8(pb);
            avio_skip(pb, 6);
            size = PKTSIZE(avio_rl32(pb));
            if (vst && subtype == 'R') {
                if (vst->codecpar->extradata) {
                    av_freep(&vst->codecpar->extradata);
                    vst->codecpar->extradata_size = 0;
                }
                if (ff_get_extradata(((void*)0), vst->codecpar, pb, size) < 0)
                    return AVERROR(ENOMEM);
                size = 0;
                if (!myth)
                    return 0;
            }
            break;
        case 129:
            avio_skip(pb, 7);
            size = PKTSIZE(avio_rl32(pb));
            if (size != 128 * 4)
                break;
            avio_rl32(pb);
            if (vst) {
                vst->codecpar->codec_tag = avio_rl32(pb);
                vst->codecpar->codec_id =
                    ff_codec_get_id(ff_codec_bmp_tags, vst->codecpar->codec_tag);
                if (vst->codecpar->codec_tag == MKTAG('R', 'J', 'P', 'G'))
                    vst->codecpar->codec_id = AV_CODEC_ID_NUV;
            } else
                avio_skip(pb, 4);

            if (ast) {
                int id;

                ast->codecpar->codec_tag = avio_rl32(pb);
                ast->codecpar->sample_rate = avio_rl32(pb);
                if (ast->codecpar->sample_rate <= 0) {
                    av_log(s, AV_LOG_ERROR, "Invalid sample rate %d\n", ast->codecpar->sample_rate);
                    return AVERROR_INVALIDDATA;
                }
                ast->codecpar->bits_per_coded_sample = avio_rl32(pb);
                ast->codecpar->channels = avio_rl32(pb);
                ast->codecpar->channel_layout = 0;

                id = ff_wav_codec_get_id(ast->codecpar->codec_tag,
                                         ast->codecpar->bits_per_coded_sample);
                if (id == AV_CODEC_ID_NONE) {
                    id = ff_codec_get_id(nuv_audio_tags, ast->codecpar->codec_tag);
                    if (id == AV_CODEC_ID_PCM_S16LE)
                        id = ff_get_pcm_codec_id(ast->codecpar->bits_per_coded_sample,
                                                 0, 0, ~1);
                }
                ast->codecpar->codec_id = id;

                ast->need_parsing = AVSTREAM_PARSE_FULL;
            } else
                avio_skip(pb, 4 * 4);

            size -= 6 * 4;
            avio_skip(pb, size);
            return 0;
        case 128:
            size = 11;
            break;
        default:
            avio_skip(pb, 7);
            size = PKTSIZE(avio_rl32(pb));
            break;
        }
        avio_skip(pb, size);
    }

    return 0;
}
