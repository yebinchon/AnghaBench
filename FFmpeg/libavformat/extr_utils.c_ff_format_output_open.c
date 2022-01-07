
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* io_open ) (TYPE_2__*,int *,char const*,int ,int **) ;int pb; TYPE_1__* oformat; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_2__ AVFormatContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVFMT_NOFILE ;
 int AVIO_FLAG_WRITE ;
 int EINVAL ;
 int stub1 (TYPE_2__*,int *,char const*,int ,int **) ;

int ff_format_output_open(AVFormatContext *s, const char *url, AVDictionary **options)
{
    if (!s->oformat)
        return AVERROR(EINVAL);

    if (!(s->oformat->flags & AVFMT_NOFILE))
        return s->io_open(s, &s->pb, url, AVIO_FLAG_WRITE, options);
    return 0;
}
