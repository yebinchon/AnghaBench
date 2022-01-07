
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_subtitle_t ;
typedef int AVCodecParameters ;


 scalar_t__ ffmpeg_parse_vobsub_extradata_mkv (int *,int *) ;
 scalar_t__ ffmpeg_parse_vobsub_extradata_mp4 (int *,int *) ;

__attribute__((used)) static int ffmpeg_parse_vobsub_extradata( AVCodecParameters *codecpar,
                                          hb_subtitle_t *subtitle )
{

    return
        ffmpeg_parse_vobsub_extradata_mkv(codecpar, subtitle) &&
        ffmpeg_parse_vobsub_extradata_mp4(codecpar, subtitle);
}
