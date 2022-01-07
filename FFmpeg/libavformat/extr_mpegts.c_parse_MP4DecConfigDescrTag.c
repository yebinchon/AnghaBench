
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int pb; TYPE_1__* active_descr; } ;
struct TYPE_4__ {int dec_config_descr_len; int dec_config_descr; } ;
typedef TYPE_1__ Mp4Descr ;
typedef TYPE_2__ MP4DescrParseContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int ENOMEM ;
 int av_malloc (int) ;
 int avio_read (int *,int ,int) ;

__attribute__((used)) static int parse_MP4DecConfigDescrTag(MP4DescrParseContext *d, int64_t off,
                                      int len)
{
    Mp4Descr *descr = d->active_descr;
    if (!descr)
        return AVERROR_INVALIDDATA;
    d->active_descr->dec_config_descr = av_malloc(len);
    if (!descr->dec_config_descr)
        return AVERROR(ENOMEM);
    descr->dec_config_descr_len = len;
    avio_read(&d->pb, descr->dec_config_descr, len);
    return 0;
}
