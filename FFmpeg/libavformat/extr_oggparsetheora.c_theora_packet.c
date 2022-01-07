
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ogg_stream {scalar_t__ lastpts; int flags; int segp; int nsegs; int* segments; scalar_t__ lastdts; scalar_t__ psize; int pduration; int granule; } ;
struct ogg {struct ogg_stream* streams; } ;
typedef scalar_t__ int64_t ;
struct TYPE_6__ {TYPE_1__** streams; struct ogg* priv_data; } ;
struct TYPE_5__ {scalar_t__ start_time; scalar_t__ duration; } ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 int OGG_FLAG_EOS ;
 scalar_t__ theora_gptopts (TYPE_2__*,int,int ,int *) ;

__attribute__((used)) static int theora_packet(AVFormatContext *s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    int duration;






    if ((!os->lastpts || os->lastpts == AV_NOPTS_VALUE) && !(os->flags & OGG_FLAG_EOS)) {
        int seg;
        int64_t pts;

        duration = 1;
        for (seg = os->segp; seg < os->nsegs; seg++) {
            if (os->segments[seg] < 255)
                duration ++;
        }

        pts = theora_gptopts(s, idx, os->granule, ((void*)0));
        if (pts != AV_NOPTS_VALUE)
            pts -= duration;
        os->lastpts = os->lastdts = pts;
        if(s->streams[idx]->start_time == AV_NOPTS_VALUE) {
            s->streams[idx]->start_time = os->lastpts;
            if (s->streams[idx]->duration > 0)
                s->streams[idx]->duration -= s->streams[idx]->start_time;
        }
    }


    if (os->psize > 0) {
        os->pduration = 1;
    }

    return 0;
}
