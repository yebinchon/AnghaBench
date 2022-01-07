
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int MOVTrack ;
typedef int MOVMuxContext ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int avio_tell (int *) ;
 int avio_wb32 (int *,int ) ;
 int ffio_wfourcc (int *,char*) ;
 int mov_write_hdlr_tag (int *,int *,int *) ;
 int mov_write_mdhd_tag (int *,int *,int *) ;
 int mov_write_minf_tag (int *,int *,int *,int *) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_mdia_tag(AVFormatContext *s, AVIOContext *pb,
                              MOVMuxContext *mov, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);
    int ret;

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "mdia");
    mov_write_mdhd_tag(pb, mov, track);
    mov_write_hdlr_tag(s, pb, track);
    if ((ret = mov_write_minf_tag(s, pb, mov, track)) < 0)
        return ret;
    return update_size(pb, pos);
}
