
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_9__ {int nb_streams; TYPE_3__* priv_data; } ;
struct TYPE_8__ {TYPE_2__* tracks; } ;
struct TYPE_6__ {scalar_t__ size; int data; } ;
struct TYPE_7__ {scalar_t__ tag; TYPE_1__ cover_image; int st; } ;
typedef TYPE_2__ MOVTrack ;
typedef TYPE_3__ MOVMuxContext ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 scalar_t__ avio_tell (int *) ;
 int avio_wb32 (int *,scalar_t__) ;
 int avio_write (int *,int ,scalar_t__) ;
 int ffio_wfourcc (int *,char*) ;
 int is_cover_image (int ) ;
 int update_size (int *,scalar_t__) ;

__attribute__((used)) static int mov_write_covr(AVIOContext *pb, AVFormatContext *s)
{
    MOVMuxContext *mov = s->priv_data;
    int64_t pos = 0;
    int i;

    for (i = 0; i < s->nb_streams; i++) {
        MOVTrack *trk = &mov->tracks[i];

        if (!is_cover_image(trk->st) || trk->cover_image.size <= 0)
            continue;

        if (!pos) {
            pos = avio_tell(pb);
            avio_wb32(pb, 0);
            ffio_wfourcc(pb, "covr");
        }
        avio_wb32(pb, 16 + trk->cover_image.size);
        ffio_wfourcc(pb, "data");
        avio_wb32(pb, trk->tag);
        avio_wb32(pb , 0);
        avio_write(pb, trk->cover_image.data, trk->cover_image.size);
    }

    return pos ? update_size(pb, pos) : 0;
}
