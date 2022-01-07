
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int nb_streams; int ** streams; TYPE_4__* priv_data; } ;
struct TYPE_11__ {TYPE_3__* cur_file; TYPE_1__* avf; } ;
struct TYPE_10__ {int nb_streams; TYPE_2__* streams; } ;
struct TYPE_9__ {int out_stream_index; } ;
struct TYPE_8__ {int nb_streams; int * streams; } ;
typedef TYPE_4__ ConcatContext ;
typedef int AVStream ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * avformat_new_stream (TYPE_5__*,int *) ;
 int copy_stream_props (int *,int ) ;

__attribute__((used)) static int match_streams_one_to_one(AVFormatContext *avf)
{
    ConcatContext *cat = avf->priv_data;
    AVStream *st;
    int i, ret;

    for (i = cat->cur_file->nb_streams; i < cat->avf->nb_streams; i++) {
        if (i < avf->nb_streams) {
            st = avf->streams[i];
        } else {
            if (!(st = avformat_new_stream(avf, ((void*)0))))
                return AVERROR(ENOMEM);
        }
        if ((ret = copy_stream_props(st, cat->avf->streams[i])) < 0)
            return ret;
        cat->cur_file->streams[i].out_stream_index = i;
    }
    return 0;
}
