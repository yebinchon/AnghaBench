
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Track {int codec_private; scalar_t__ codec_private_size; } ;
struct TYPE_3__ {scalar_t__ extradata_size; int extradata; } ;
typedef TYPE_1__ AVCodecParameters ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_mallocz (scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static int get_private_data(struct Track *track, AVCodecParameters *codecpar)
{
    track->codec_private_size = 0;
    track->codec_private = av_mallocz(codecpar->extradata_size);
    if (!track->codec_private)
        return AVERROR(ENOMEM);
    track->codec_private_size = codecpar->extradata_size;
    memcpy(track->codec_private, codecpar->extradata, codecpar->extradata_size);
    return 0;
}
