
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ebml_master ;
struct TYPE_2__ {int projection; scalar_t__ roll; scalar_t__ pitch; scalar_t__ yaw; int padding; int bound_right; int bound_left; int bound_bottom; int bound_top; } ;
typedef int AVStream ;
typedef TYPE_1__ AVSphericalMapping ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AV_LOG_WARNING ;
 int AV_PKT_DATA_SPHERICAL ;



 int MATROSKA_ID_VIDEOPROJECTION ;
 int MATROSKA_ID_VIDEOPROJECTIONPOSEPITCH ;
 int MATROSKA_ID_VIDEOPROJECTIONPOSEROLL ;
 int MATROSKA_ID_VIDEOPROJECTIONPOSEYAW ;
 int MATROSKA_ID_VIDEOPROJECTIONPRIVATE ;
 int MATROSKA_ID_VIDEOPROJECTIONTYPE ;
 int MATROSKA_VIDEO_PROJECTION_TYPE_CUBEMAP ;
 int MATROSKA_VIDEO_PROJECTION_TYPE_EQUIRECTANGULAR ;
 int av_freep (int **) ;
 int av_log (int *,int ,char*) ;
 scalar_t__ av_stream_get_side_data (int *,int ,int*) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_open_dyn_buf (int **) ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int ) ;
 int avio_write (int *,int *,int) ;
 int end_ebml_master (int *,int ) ;
 int ffio_init_context (int *,int *,int,int,int *,int *,int *,int *) ;
 int put_ebml_binary (int *,int ,int *,int ) ;
 int put_ebml_float (int *,int ,double) ;
 int put_ebml_uint (int *,int ,int ) ;
 int start_ebml_master (int *,int ,int) ;

__attribute__((used)) static int mkv_write_video_projection(AVFormatContext *s, AVIOContext *pb,
                                      AVStream *st)
{
    AVIOContext b;
    AVIOContext *dyn_cp;
    int side_data_size = 0;
    int ret, projection_size;
    uint8_t *projection_ptr;
    uint8_t private[20];

    const AVSphericalMapping *spherical =
        (const AVSphericalMapping *)av_stream_get_side_data(st, AV_PKT_DATA_SPHERICAL,
                                                            &side_data_size);

    if (!side_data_size)
        return 0;

    ret = avio_open_dyn_buf(&dyn_cp);
    if (ret < 0)
        return ret;

    switch (spherical->projection) {
    case 129:
        put_ebml_uint(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONTYPE,
                      MATROSKA_VIDEO_PROJECTION_TYPE_EQUIRECTANGULAR);
        break;
    case 128:
        ffio_init_context(&b, private, 20, 1, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        put_ebml_uint(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONTYPE,
                      MATROSKA_VIDEO_PROJECTION_TYPE_EQUIRECTANGULAR);
        avio_wb32(&b, 0);
        avio_wb32(&b, spherical->bound_top);
        avio_wb32(&b, spherical->bound_bottom);
        avio_wb32(&b, spherical->bound_left);
        avio_wb32(&b, spherical->bound_right);
        put_ebml_binary(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONPRIVATE,
                        private, avio_tell(&b));
        break;
    case 130:
        ffio_init_context(&b, private, 12, 1, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        put_ebml_uint(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONTYPE,
                      MATROSKA_VIDEO_PROJECTION_TYPE_CUBEMAP);
        avio_wb32(&b, 0);
        avio_wb32(&b, 0);
        avio_wb32(&b, spherical->padding);
        put_ebml_binary(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONPRIVATE,
                        private, avio_tell(&b));
        break;
    default:
        av_log(s, AV_LOG_WARNING, "Unknown projection type\n");
        goto end;
    }

    if (spherical->yaw)
        put_ebml_float(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONPOSEYAW,
                       (double) spherical->yaw / (1 << 16));
    if (spherical->pitch)
        put_ebml_float(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONPOSEPITCH,
                       (double) spherical->pitch / (1 << 16));
    if (spherical->roll)
        put_ebml_float(dyn_cp, MATROSKA_ID_VIDEOPROJECTIONPOSEROLL,
                       (double) spherical->roll / (1 << 16));

end:
    projection_size = avio_close_dyn_buf(dyn_cp, &projection_ptr);
    if (projection_size) {
        ebml_master projection = start_ebml_master(pb,
                                                   MATROSKA_ID_VIDEOPROJECTION,
                                                   projection_size);
        avio_write(pb, projection_ptr, projection_size);
        end_ebml_master(pb, projection);
    }
    av_freep(&projection_ptr);

    return 0;
}
