
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* codecpar; TYPE_4__* priv_data; } ;
struct TYPE_13__ {int nb_segments; TYPE_2__** segments; } ;
struct TYPE_11__ {int num; int den; } ;
struct TYPE_12__ {int edit_units_per_packet; scalar_t__ wrapping; TYPE_3__ edit_rate; int index_sid; } ;
struct TYPE_10__ {int edit_unit_byte_count; } ;
struct TYPE_9__ {scalar_t__ codec_type; int codec_id; } ;
typedef TYPE_4__ MXFTrack ;
typedef TYPE_5__ MXFIndexTable ;
typedef int MXFContext ;
typedef TYPE_6__ AVStream ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ ClipWrapped ;
 int FFMAX (int,int) ;
 int is_pcm (int ) ;
 TYPE_5__* mxf_find_index_table (int *,int ) ;

__attribute__((used)) static void mxf_compute_edit_units_per_packet(MXFContext *mxf, AVStream *st)
{
    MXFTrack *track = st->priv_data;
    MXFIndexTable *t;

    if (!track)
        return;
    track->edit_units_per_packet = 1;
    if (track->wrapping != ClipWrapped)
        return;

    t = mxf_find_index_table(mxf, track->index_sid);


    if (st->codecpar->codec_type != AVMEDIA_TYPE_AUDIO ||
        !is_pcm(st->codecpar->codec_id) ||
        !t ||
        t->nb_segments != 1 ||
        t->segments[0]->edit_unit_byte_count >= 32)
        return;





    track->edit_units_per_packet = FFMAX(1, track->edit_rate.num / track->edit_rate.den / 25);
}
