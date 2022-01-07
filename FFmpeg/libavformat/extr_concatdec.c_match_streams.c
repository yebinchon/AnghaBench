
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {TYPE_4__* priv_data; } ;
struct TYPE_16__ {int stream_match_mode; TYPE_2__* avf; TYPE_1__* cur_file; } ;
struct TYPE_15__ {int out_stream_index; } ;
struct TYPE_14__ {int nb_streams; } ;
struct TYPE_13__ {int nb_streams; TYPE_3__* streams; } ;
typedef TYPE_3__ ConcatStream ;
typedef TYPE_4__ ConcatContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_BUG ;
 int ENOMEM ;


 TYPE_3__* av_realloc (TYPE_3__*,int) ;
 int detect_stream_specific (TYPE_5__*,int) ;
 int match_streams_exact_id (TYPE_5__*) ;
 int match_streams_one_to_one (TYPE_5__*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int match_streams(AVFormatContext *avf)
{
    ConcatContext *cat = avf->priv_data;
    ConcatStream *map;
    int i, ret;

    if (cat->cur_file->nb_streams >= cat->avf->nb_streams)
        return 0;
    map = av_realloc(cat->cur_file->streams,
                     cat->avf->nb_streams * sizeof(*map));
    if (!map)
        return AVERROR(ENOMEM);
    cat->cur_file->streams = map;
    memset(map + cat->cur_file->nb_streams, 0,
           (cat->avf->nb_streams - cat->cur_file->nb_streams) * sizeof(*map));

    for (i = cat->cur_file->nb_streams; i < cat->avf->nb_streams; i++) {
        map[i].out_stream_index = -1;
        if ((ret = detect_stream_specific(avf, i)) < 0)
            return ret;
    }
    switch (cat->stream_match_mode) {
    case 128:
        ret = match_streams_one_to_one(avf);
        break;
    case 129:
        ret = match_streams_exact_id(avf);
        break;
    default:
        ret = AVERROR_BUG;
    }
    if (ret < 0)
        return ret;
    cat->cur_file->nb_streams = cat->avf->nb_streams;
    return 0;
}
