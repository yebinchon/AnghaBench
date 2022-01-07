
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {TYPE_1__* ic; } ;
typedef TYPE_2__ VideoState ;
struct TYPE_9__ {int time_base; int start; } ;
struct TYPE_7__ {int nb_chapters; TYPE_3__** chapters; } ;
typedef TYPE_3__ AVChapter ;


 int AV_LOG_VERBOSE ;
 int AV_TIME_BASE ;
 int AV_TIME_BASE_Q ;
 int FFMAX (int,int ) ;
 scalar_t__ av_compare_ts (int,int ,int ,int ) ;
 int av_log (int *,int ,char*,int) ;
 int av_rescale_q (int ,int ,int ) ;
 int get_master_clock (TYPE_2__*) ;
 int stream_seek (TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static void seek_chapter(VideoState *is, int incr)
{
    int64_t pos = get_master_clock(is) * AV_TIME_BASE;
    int i;

    if (!is->ic->nb_chapters)
        return;


    for (i = 0; i < is->ic->nb_chapters; i++) {
        AVChapter *ch = is->ic->chapters[i];
        if (av_compare_ts(pos, AV_TIME_BASE_Q, ch->start, ch->time_base) < 0) {
            i--;
            break;
        }
    }

    i += incr;
    i = FFMAX(i, 0);
    if (i >= is->ic->nb_chapters)
        return;

    av_log(((void*)0), AV_LOG_VERBOSE, "Seeking to chapter %d.\n", i);
    stream_seek(is, av_rescale_q(is->ic->chapters[i]->start, is->ic->chapters[i]->time_base,
                                 AV_TIME_BASE_Q), 0, 0);
}
