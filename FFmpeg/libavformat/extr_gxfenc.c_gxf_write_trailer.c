
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_9__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int map_offsets_nb; int * map_offsets; int * flt_entries; } ;
typedef TYPE_1__ GXFContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int SEEK_SET ;
 int av_freep (int **) ;
 int avio_flush (int *) ;
 int avio_seek (int *,int ,int ) ;
 int avio_tell (int *) ;
 int ff_audio_interleave_close (TYPE_2__*) ;
 int gxf_write_eos_packet (int *) ;
 int gxf_write_flt_packet (TYPE_2__*) ;
 int gxf_write_map_packet (TYPE_2__*,int) ;
 int gxf_write_umf_packet (TYPE_2__*) ;

__attribute__((used)) static int gxf_write_trailer(AVFormatContext *s)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t end;
    int i;
    int ret;

    ff_audio_interleave_close(s);

    gxf_write_eos_packet(pb);
    end = avio_tell(pb);
    avio_seek(pb, 0, SEEK_SET);

    if ((ret = gxf_write_map_packet(s, 1)) < 0)
        return ret;
    gxf_write_flt_packet(s);
    gxf_write_umf_packet(s);
    avio_flush(pb);

    for (i = 1; i < gxf->map_offsets_nb; i++) {
        avio_seek(pb, gxf->map_offsets[i], SEEK_SET);
        if ((ret = gxf_write_map_packet(s, 1)) < 0)
            return ret;
        avio_flush(pb);
    }

    avio_seek(pb, end, SEEK_SET);

    av_freep(&gxf->flt_entries);
    av_freep(&gxf->map_offsets);

    return 0;
}
