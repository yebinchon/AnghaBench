
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pix_fmt; } ;
typedef TYPE_1__ MXFDescriptor ;
typedef int AVIOContext ;


 int AV_LOG_TRACE ;
 int av_log (int *,int ,char*,int) ;
 int avio_r8 (int *) ;
 int ff_mxf_decode_pixel_layout (char*,int *) ;

__attribute__((used)) static void mxf_read_pixel_layout(AVIOContext *pb, MXFDescriptor *descriptor)
{
    int code, value, ofs = 0;
    char layout[16] = {0};

    do {
        code = avio_r8(pb);
        value = avio_r8(pb);
        av_log(((void*)0), AV_LOG_TRACE, "pixel layout: code %#x\n", code);

        if (ofs <= 14) {
            layout[ofs++] = code;
            layout[ofs++] = value;
        } else
            break;
    } while (code != 0);

    ff_mxf_decode_pixel_layout(layout, &descriptor->pix_fmt);
}
