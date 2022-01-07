
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {TYPE_3__** streams; int * pb; TYPE_2__* priv_data; } ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int body_offset; int header_written; } ;
struct TYPE_8__ {int track_essence_element_key; } ;
typedef TYPE_1__ MXFStreamContext ;
typedef TYPE_2__ MXFContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int avio_write (int *,int ,int) ;
 int * body_partition_key ;
 int klv_encode_ber9_length (int *,int ) ;
 int mxf_write_klv_fill (TYPE_4__*) ;
 int mxf_write_partition (TYPE_4__*,int,int ,int const*,int ) ;

__attribute__((used)) static int mxf_write_opatom_body_partition(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st = s->streams[0];
    MXFStreamContext *sc = st->priv_data;
    const uint8_t *key = ((void*)0);

    int err;

    if (!mxf->header_written)
        key = body_partition_key;

    if ((err = mxf_write_partition(s, 1, 0, key, 0)) < 0)
        return err;
    mxf_write_klv_fill(s);
    avio_write(pb, sc->track_essence_element_key, 16);
    klv_encode_ber9_length(pb, mxf->body_offset);
    return 0;
}
