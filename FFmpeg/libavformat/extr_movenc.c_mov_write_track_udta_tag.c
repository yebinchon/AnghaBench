
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ MOVMuxContext ;
typedef int AVStream ;
typedef int AVIOContext ;


 int MODE_MOV ;
 int MODE_MP4 ;
 int av_free (int *) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_open_dyn_buf (int **) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int mov_write_track_metadata (int *,int *,char*,char*) ;

__attribute__((used)) static int mov_write_track_udta_tag(AVIOContext *pb, MOVMuxContext *mov,
                                    AVStream *st)
{
    AVIOContext *pb_buf;
    int ret, size;
    uint8_t *buf;

    if (!st)
        return 0;

    ret = avio_open_dyn_buf(&pb_buf);
    if (ret < 0)
        return ret;

    if (mov->mode & (MODE_MP4|MODE_MOV))
        mov_write_track_metadata(pb_buf, st, "name", "title");

    if ((size = avio_close_dyn_buf(pb_buf, &buf)) > 0) {
        avio_wb32(pb, size + 8);
        ffio_wfourcc(pb, "udta");
        avio_write(pb, buf, size);
    }
    av_free(buf);

    return 0;
}
