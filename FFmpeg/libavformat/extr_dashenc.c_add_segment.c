
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* int64_t ;
struct TYPE_7__ {int nb_segments; int segments_size; int segment_index; TYPE_1__** segments; } ;
struct TYPE_6__ {scalar_t__ time; void* index_length; void* range_length; void* start_pos; void* duration; int file; } ;
typedef TYPE_1__ Segment ;
typedef TYPE_2__ OutputStream ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 int av_log (int *,int ,char*,char const*,int,int) ;
 TYPE_1__* av_mallocz (int) ;
 int av_reallocp (TYPE_1__***,int) ;
 int av_strlcpy (int ,char const*,int) ;

__attribute__((used)) static int add_segment(OutputStream *os, const char *file,
                       int64_t time, int64_t duration,
                       int64_t start_pos, int64_t range_length,
                       int64_t index_length, int next_exp_index)
{
    int err;
    Segment *seg;
    if (os->nb_segments >= os->segments_size) {
        os->segments_size = (os->segments_size + 1) * 2;
        if ((err = av_reallocp(&os->segments, sizeof(*os->segments) *
                               os->segments_size)) < 0) {
            os->segments_size = 0;
            os->nb_segments = 0;
            return err;
        }
    }
    seg = av_mallocz(sizeof(*seg));
    if (!seg)
        return AVERROR(ENOMEM);
    av_strlcpy(seg->file, file, sizeof(seg->file));
    seg->time = time;
    seg->duration = duration;
    if (seg->time < 0) {
        seg->duration += seg->time;
        seg->time = 0;
    }
    seg->start_pos = start_pos;
    seg->range_length = range_length;
    seg->index_length = index_length;
    os->segments[os->nb_segments++] = seg;
    os->segment_index++;

    if (os->segment_index < next_exp_index) {
        av_log(((void*)0), AV_LOG_WARNING, "Correcting the segment index after file %s: current=%d corrected=%d\n",
               file, os->segment_index, next_exp_index);
        os->segment_index = next_exp_index;
    }
    return 0;
}
