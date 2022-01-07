
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;
typedef int AVFormatContext ;
typedef int AVCodecParameters ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_log (int *,int ,char*,unsigned int) ;
 scalar_t__ ff_get_extradata (int *,int *,int *,unsigned int) ;

__attribute__((used)) static int rm_read_extradata(AVFormatContext *s, AVIOContext *pb, AVCodecParameters *par, unsigned size)
{
    if (size >= 1<<24) {
        av_log(s, AV_LOG_ERROR, "extradata size %u too large\n", size);
        return -1;
    }
    if (ff_get_extradata(s, par, pb, size) < 0)
        return AVERROR(ENOMEM);
    return 0;
}
