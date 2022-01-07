
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct ogg_stream {int* buf; int pstart; scalar_t__ lastpts; int flags; int segp; scalar_t__ psize; int nsegs; int* segments; scalar_t__ lastdts; int pduration; int granule; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_6__ {TYPE_1__** streams; struct ogg* priv_data; } ;
struct TYPE_5__ {scalar_t__ start_time; scalar_t__ duration; } ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 int OGG_FLAG_EOS ;
 scalar_t__ vp8_gptopts (TYPE_2__*,int,int ,int *) ;

__attribute__((used)) static int vp8_packet(AVFormatContext *s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    uint8_t *p = os->buf + os->pstart;

    if ((!os->lastpts || os->lastpts == AV_NOPTS_VALUE) &&
        !(os->flags & OGG_FLAG_EOS)) {
        int seg;
        int duration;
        uint8_t *last_pkt = p;
        uint8_t *next_pkt;

        seg = os->segp;
        duration = (last_pkt[0] >> 4) & 1;
        next_pkt = last_pkt += os->psize;
        for (; seg < os->nsegs; seg++) {
            if (os->segments[seg] < 255) {
                duration += (last_pkt[0] >> 4) & 1;
                last_pkt = next_pkt + os->segments[seg];
            }
            next_pkt += os->segments[seg];
        }
        os->lastpts =
        os->lastdts = vp8_gptopts(s, idx, os->granule, ((void*)0)) - duration;
        if(s->streams[idx]->start_time == AV_NOPTS_VALUE) {
            s->streams[idx]->start_time = os->lastpts;
            if (s->streams[idx]->duration && s->streams[idx]->duration != AV_NOPTS_VALUE)
                s->streams[idx]->duration -= s->streams[idx]->start_time;
        }
    }

    if (os->psize > 0)
        os->pduration = (p[0] >> 4) & 1;

    return 0;
}
