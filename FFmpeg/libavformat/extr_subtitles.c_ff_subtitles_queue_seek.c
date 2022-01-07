
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ nb_subs; int current_sub_idx; TYPE_1__* subs; } ;
struct TYPE_5__ {scalar_t__ pts; int stream_index; scalar_t__ duration; } ;
typedef TYPE_2__ FFDemuxSubtitlesQueue ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVSEEK_FLAG_BYTE ;
 int AVSEEK_FLAG_FRAME ;
 int ENOSYS ;
 int ERANGE ;
 int search_sub_ts (TYPE_2__*,scalar_t__) ;

int ff_subtitles_queue_seek(FFDemuxSubtitlesQueue *q, AVFormatContext *s, int stream_index,
                            int64_t min_ts, int64_t ts, int64_t max_ts, int flags)
{
    if (flags & AVSEEK_FLAG_BYTE) {
        return AVERROR(ENOSYS);
    } else if (flags & AVSEEK_FLAG_FRAME) {
        if (ts < 0 || ts >= q->nb_subs)
            return AVERROR(ERANGE);
        q->current_sub_idx = ts;
    } else {
        int i, idx = search_sub_ts(q, ts);
        int64_t ts_selected;

        if (idx < 0)
            return idx;
        for (i = idx; i < q->nb_subs && q->subs[i].pts < min_ts; i++)
            if (stream_index == -1 || q->subs[i].stream_index == stream_index)
                idx = i;
        for (i = idx; i > 0 && q->subs[i].pts > max_ts; i--)
            if (stream_index == -1 || q->subs[i].stream_index == stream_index)
                idx = i;

        ts_selected = q->subs[idx].pts;
        if (ts_selected < min_ts || ts_selected > max_ts)
            return AVERROR(ERANGE);


        for (i = idx - 1; i >= 0; i--) {
            int64_t pts = q->subs[i].pts;
            if (q->subs[i].duration <= 0 ||
                (stream_index != -1 && q->subs[i].stream_index != stream_index))
                continue;
            if (pts >= min_ts && pts > ts_selected - q->subs[i].duration)
                idx = i;
            else
                break;
        }






        if (stream_index == -1)
            while (idx > 0 && q->subs[idx - 1].pts == q->subs[idx].pts)
                idx--;

        q->current_sub_idx = idx;
    }
    return 0;
}
