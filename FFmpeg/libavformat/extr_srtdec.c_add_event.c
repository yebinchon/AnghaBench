
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct event_info {int x1; int y1; int x2; int y2; int duration; int pts; int pos; } ;
struct TYPE_9__ {int len; char* str; } ;
struct TYPE_8__ {int duration; int pts; int pos; } ;
typedef int FFDemuxSubtitlesQueue ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVBPrint ;


 int AVERROR (int ) ;
 int AV_PKT_DATA_SUBTITLE_POSITION ;
 int AV_WL32 (int *,int) ;
 int ENOMEM ;
 int av_bprint_clear (TYPE_2__*) ;
 int av_bprintf (TYPE_2__*,char*,char*) ;
 int * av_packet_new_side_data (TYPE_1__*,int ,int) ;
 TYPE_1__* ff_subtitles_queue_insert (int *,char*,int,int ) ;

__attribute__((used)) static int add_event(FFDemuxSubtitlesQueue *q, AVBPrint *buf, char *line_cache,
                     const struct event_info *ei, int append_cache)
{
    if (append_cache && line_cache[0])
        av_bprintf(buf, "%s\n", line_cache);
    line_cache[0] = 0;

    while (buf->len > 0 && buf->str[buf->len - 1] == '\n')
        buf->str[--buf->len] = 0;

    if (buf->len) {
        AVPacket *sub = ff_subtitles_queue_insert(q, buf->str, buf->len, 0);
        if (!sub)
            return AVERROR(ENOMEM);
        av_bprint_clear(buf);
        sub->pos = ei->pos;
        sub->pts = ei->pts;
        sub->duration = ei->duration;
        if (ei->x1 != -1) {
            uint8_t *p = av_packet_new_side_data(sub, AV_PKT_DATA_SUBTITLE_POSITION, 16);
            if (p) {
                AV_WL32(p, ei->x1);
                AV_WL32(p + 4, ei->y1);
                AV_WL32(p + 8, ei->x2);
                AV_WL32(p + 12, ei->y2);
            }
        }
    }

    return 0;
}
