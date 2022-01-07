
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int video_codec_id; } ;
struct TYPE_4__ {TYPE_3__* fc; } ;
typedef TYPE_1__ MOVContext ;
typedef int AVIOContext ;


 int AV_LOG_WARNING ;
 int AV_RL32 (char*) ;
 int MKTAG (char,char,char,char) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int avio_skip (int *,int ) ;
 int ff_codec_get_id (int ,int) ;
 int ff_codec_movvideo_tags ;

__attribute__((used)) static int mov_skip_multiple_stsd(MOVContext *c, AVIOContext *pb,
                                  int codec_tag, int format,
                                  int64_t size)
{
    int video_codec_id = ff_codec_get_id(ff_codec_movvideo_tags, format);

    if (codec_tag &&
         (codec_tag != format &&

          (codec_tag != AV_RL32("AV1x") || format != AV_RL32("AVup")) &&

          codec_tag != AV_RL32("apcn") && codec_tag != AV_RL32("apch") &&

          codec_tag != AV_RL32("dvpp") && codec_tag != AV_RL32("dvcp") &&
          (c->fc->video_codec_id ? video_codec_id != c->fc->video_codec_id
                                 : codec_tag != MKTAG('j','p','e','g')))) {




        av_log(c->fc, AV_LOG_WARNING, "multiple fourcc not supported\n");
        avio_skip(pb, size);
        return 1;
    }

    return 0;
}
