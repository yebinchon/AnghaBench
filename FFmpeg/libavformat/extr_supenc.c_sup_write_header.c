
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nb_streams; int * streams; TYPE_1__* oformat; } ;
struct TYPE_5__ {int name; } ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_2__*,int ,char*,int ) ;
 int avpriv_set_pts_info (int ,int,int,int) ;

__attribute__((used)) static int sup_write_header(AVFormatContext *s)
{
    if (s->nb_streams != 1) {
        av_log(s, AV_LOG_ERROR, "%s files have exactly one stream\n",
               s->oformat->name);
        return AVERROR(EINVAL);
    }

    avpriv_set_pts_info(s->streams[0], 32, 1, 90000);

    return 0;
}
