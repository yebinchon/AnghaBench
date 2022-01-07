
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ogg_stream {int new_metadata; int buf; } ;
struct ogg_state {int nstreams; TYPE_3__* streams; int curidx; int pos; struct ogg_state* next; } ;
struct ogg {int nstreams; int page_pos; struct ogg_stream* streams; int curidx; struct ogg_state* state; } ;
struct TYPE_6__ {int private; } ;
struct TYPE_5__ {int * pb; struct ogg* priv_data; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int SEEK_SET ;
 int av_free (struct ogg_state*) ;
 int av_freep (int *) ;
 int av_reallocp_array (struct ogg_stream**,int,int) ;
 int avio_seek (int *,int ,int ) ;
 int free_stream (TYPE_1__*,int) ;
 int memcpy (struct ogg_stream*,TYPE_3__*,int) ;

__attribute__((used)) static int ogg_restore(AVFormatContext *s)
{
    struct ogg *ogg = s->priv_data;
    AVIOContext *bc = s->pb;
    struct ogg_state *ost = ogg->state;
    int i, err;

    if (!ost)
        return 0;

    ogg->state = ost->next;

        for (i = 0; i < ogg->nstreams; i++) {
            struct ogg_stream *stream = &ogg->streams[i];
            av_freep(&stream->buf);
            av_freep(&stream->new_metadata);

            if (i >= ost->nstreams || !ost->streams[i].private) {
                free_stream(s, i);
            }
        }

        avio_seek(bc, ost->pos, SEEK_SET);
        ogg->page_pos = -1;
        ogg->curidx = ost->curidx;
        ogg->nstreams = ost->nstreams;
        if ((err = av_reallocp_array(&ogg->streams, ogg->nstreams,
                                     sizeof(*ogg->streams))) < 0) {
            ogg->nstreams = 0;
            return err;
        } else
            memcpy(ogg->streams, ost->streams,
                   ost->nstreams * sizeof(*ogg->streams));

    av_free(ost);

    return 0;
}
