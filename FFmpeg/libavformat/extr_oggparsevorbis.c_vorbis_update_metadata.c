
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ogg_stream {int psize; scalar_t__ new_metadata_size; int new_metadata; scalar_t__ pstart; scalar_t__ buf; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_7__ {TYPE_1__** streams; struct ogg* priv_data; } ;
struct TYPE_6__ {scalar_t__ metadata; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVFormatContext ;


 int av_dict_free (scalar_t__*) ;
 int av_freep (int *) ;
 int av_malloc (int) ;
 int av_packet_pack_dictionary (scalar_t__,scalar_t__*) ;
 int ff_vorbis_stream_comment (TYPE_2__*,TYPE_1__*,scalar_t__,int) ;

__attribute__((used)) static int vorbis_update_metadata(AVFormatContext *s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    AVStream *st = s->streams[idx];
    int ret;

    if (os->psize <= 8)
        return 0;


    av_dict_free(&st->metadata);
    ret = ff_vorbis_stream_comment(s, st, os->buf + os->pstart + 7,
                                   os->psize - 8);
    if (ret < 0)
        return ret;


    av_freep(&os->new_metadata);
    if (st->metadata) {
        os->new_metadata = av_packet_pack_dictionary(st->metadata, &os->new_metadata_size);

    } else {
        os->new_metadata = av_malloc(1);
        os->new_metadata_size = 0;
    }

    return ret;
}
