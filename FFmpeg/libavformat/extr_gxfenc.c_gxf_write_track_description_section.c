
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {int nb_streams; TYPE_1__** streams; int * pb; TYPE_2__* priv_data; } ;
struct TYPE_7__ {int timecode_track; } ;
struct TYPE_6__ {int * priv_data; } ;
typedef TYPE_2__ GXFContext ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int avio_tell (int *) ;
 int avio_wb16 (int *,int ) ;
 int gxf_write_track_description (TYPE_3__*,int *,int) ;
 int updateSize (int *,int ) ;

__attribute__((used)) static int gxf_write_track_description_section(AVFormatContext *s)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t pos;
    int i;

    pos = avio_tell(pb);
    avio_wb16(pb, 0);
    for (i = 0; i < s->nb_streams; ++i)
        gxf_write_track_description(s, s->streams[i]->priv_data, i);

    gxf_write_track_description(s, &gxf->timecode_track, s->nb_streams);

    return updateSize(pb, pos);
}
