
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* iformat; } ;
struct TYPE_10__ {scalar_t__ start_time; TYPE_1__* codecpar; } ;
struct TYPE_9__ {int raw_codec_id; } ;
struct TYPE_8__ {int codec_id; int codec_type; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_DATA ;
 int ENOMEM ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;

int ff_raw_data_read_header(AVFormatContext *s)
{
    AVStream *st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_DATA;
    st->codecpar->codec_id = s->iformat->raw_codec_id;
    st->start_time = 0;
    return 0;
}
