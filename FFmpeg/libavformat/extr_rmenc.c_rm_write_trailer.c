
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int nb_streams; TYPE_3__* pb; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int seekable; } ;
struct TYPE_11__ {int data_pos; TYPE_1__* streams; } ;
struct TYPE_10__ {int nb_frames; int total_frames; } ;
typedef TYPE_2__ RMMuxContext ;
typedef TYPE_3__ AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVIO_SEEKABLE_NORMAL ;
 int SEEK_SET ;
 int avio_seek (TYPE_3__*,int ,int ) ;
 int avio_tell (TYPE_3__*) ;
 int avio_wb32 (TYPE_3__*,int ) ;
 int rv10_write_header (TYPE_4__*,int,int ) ;

__attribute__((used)) static int rm_write_trailer(AVFormatContext *s)
{
    RMMuxContext *rm = s->priv_data;
    int data_size, index_pos, i;
    AVIOContext *pb = s->pb;

    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL) {

        index_pos = avio_tell(pb);
        data_size = index_pos - rm->data_pos;




        avio_wb32(pb, 0);
        avio_wb32(pb, 0);

        avio_seek(pb, 0, SEEK_SET);
        for(i=0;i<s->nb_streams;i++)
            rm->streams[i].total_frames = rm->streams[i].nb_frames;
        rv10_write_header(s, data_size, 0);
    } else {

        avio_wb32(pb, 0);
        avio_wb32(pb, 0);
    }

    return 0;
}
