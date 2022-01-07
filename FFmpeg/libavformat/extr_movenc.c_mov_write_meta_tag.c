
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_1__ MOVMuxContext ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int FF_MOV_FLAG_USE_MDTA ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int ) ;
 int ffio_wfourcc (int *,char*) ;
 int mov_write_ilst_tag (int *,TYPE_1__*,int *) ;
 int mov_write_itunes_hdlr_tag (int *,TYPE_1__*,int *) ;
 int mov_write_mdta_hdlr_tag (int *,TYPE_1__*,int *) ;
 int mov_write_mdta_ilst_tag (int *,TYPE_1__*,int *) ;
 int mov_write_mdta_keys_tag (int *,TYPE_1__*,int *) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_meta_tag(AVIOContext *pb, MOVMuxContext *mov,
                              AVFormatContext *s)
{
    int size = 0;
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "meta");
    avio_wb32(pb, 0);
    if (mov->flags & FF_MOV_FLAG_USE_MDTA) {
        mov_write_mdta_hdlr_tag(pb, mov, s);
        mov_write_mdta_keys_tag(pb, mov, s);
        mov_write_mdta_ilst_tag(pb, mov, s);
    }
    else {

        mov_write_itunes_hdlr_tag(pb, mov, s);
        mov_write_ilst_tag(pb, mov, s);
    }
    size = update_size(pb, pos);
    return size;
}
