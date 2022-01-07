
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ogg_stream {int new_metadata; int private; TYPE_1__* codec; int buf; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_6__ {struct ogg* priv_data; } ;
struct TYPE_5__ {int (* cleanup ) (TYPE_2__*,int) ;} ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int *) ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static void free_stream(AVFormatContext *s, int i)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *stream = &ogg->streams[i];

    av_freep(&stream->buf);
    if (stream->codec &&
        stream->codec->cleanup) {
        stream->codec->cleanup(s, i);
    }

    av_freep(&stream->private);
    av_freep(&stream->new_metadata);
}
