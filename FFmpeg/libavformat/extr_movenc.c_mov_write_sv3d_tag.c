
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int projection; int yaw; int pitch; int roll; int bound_top; int bound_bottom; int bound_left; int bound_right; int padding; } ;
typedef TYPE_1__ AVSphericalMapping ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVFMT_FLAG_BITEXACT ;
 int AV_LOG_WARNING ;



 char* LIBAVFORMAT_IDENT ;
 int av_log (TYPE_2__*,int ,char*,int) ;
 int avio_put_str (int *,char const*) ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_sv3d_tag(AVFormatContext *s, AVIOContext *pb, AVSphericalMapping *spherical_mapping)
{
    int64_t sv3d_pos, svhd_pos, proj_pos;
    const char* metadata_source = s->flags & AVFMT_FLAG_BITEXACT ? "Lavf" : LIBAVFORMAT_IDENT;

    if (spherical_mapping->projection != 129 &&
        spherical_mapping->projection != 128 &&
        spherical_mapping->projection != 130) {
        av_log(s, AV_LOG_WARNING, "Unsupported projection %d. sv3d not written.\n", spherical_mapping->projection);
        return 0;
    }

    sv3d_pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "sv3d");

    svhd_pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "svhd");
    avio_wb32(pb, 0);
    avio_put_str(pb, metadata_source);
    update_size(pb, svhd_pos);

    proj_pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "proj");

    avio_wb32(pb, 24);
    ffio_wfourcc(pb, "prhd");
    avio_wb32(pb, 0);
    avio_wb32(pb, spherical_mapping->yaw);
    avio_wb32(pb, spherical_mapping->pitch);
    avio_wb32(pb, spherical_mapping->roll);

    switch (spherical_mapping->projection) {
    case 129:
    case 128:
        avio_wb32(pb, 28);
        ffio_wfourcc(pb, "equi");
        avio_wb32(pb, 0);
        avio_wb32(pb, spherical_mapping->bound_top);
        avio_wb32(pb, spherical_mapping->bound_bottom);
        avio_wb32(pb, spherical_mapping->bound_left);
        avio_wb32(pb, spherical_mapping->bound_right);
        break;
    case 130:
        avio_wb32(pb, 20);
        ffio_wfourcc(pb, "cbmp");
        avio_wb32(pb, 0);
        avio_wb32(pb, 0);
        avio_wb32(pb, spherical_mapping->padding);
        break;
    }
    update_size(pb, proj_pos);

    return update_size(pb, sv3d_pos);
}
