
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_12__ {int nb_streams; TYPE_1__** streams; TYPE_3__* priv_data; } ;
struct TYPE_11__ {int nb_files; TYPE_4__* avf; TYPE_2__* files; TYPE_2__* cur_file; int seekable; } ;
struct TYPE_10__ {scalar_t__ start_time; } ;
struct TYPE_9__ {int time_base; } ;
typedef TYPE_3__ ConcatContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_TIME_BASE_Q ;
 int EINVAL ;
 int ESPIPE ;
 int open_file (TYPE_4__*,int) ;
 int rescale_interval (int ,int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int try_seek (TYPE_4__*,int,scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int real_seek(AVFormatContext *avf, int stream,
                     int64_t min_ts, int64_t ts, int64_t max_ts, int flags, AVFormatContext *cur_avf)
{
    ConcatContext *cat = avf->priv_data;
    int ret, left, right;

    if (stream >= 0) {
        if (stream >= avf->nb_streams)
            return AVERROR(EINVAL);
        rescale_interval(avf->streams[stream]->time_base, AV_TIME_BASE_Q,
                         &min_ts, &ts, &max_ts);
    }

    left = 0;
    right = cat->nb_files;


    if (ts <= 0)
        right = 1;
    else if (!cat->seekable)
        return AVERROR(ESPIPE);

    while (right - left > 1) {
        int mid = (left + right) / 2;
        if (ts < cat->files[mid].start_time)
            right = mid;
        else
            left = mid;
    }

    if (cat->cur_file != &cat->files[left]) {
        if ((ret = open_file(avf, left)) < 0)
            return ret;
    } else {
        cat->avf = cur_avf;
    }

    ret = try_seek(avf, stream, min_ts, ts, max_ts, flags);
    if (ret < 0 &&
        left < cat->nb_files - 1 &&
        cat->files[left + 1].start_time < max_ts) {
        if (cat->cur_file == &cat->files[left])
            cat->avf = ((void*)0);
        if ((ret = open_file(avf, left + 1)) < 0)
            return ret;
        ret = try_seek(avf, stream, min_ts, ts, max_ts, flags);
    }
    return ret;
}
