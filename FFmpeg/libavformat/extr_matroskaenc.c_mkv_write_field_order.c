
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVFieldOrder { ____Placeholder_AVFieldOrder } AVFieldOrder ;
typedef int AVIOContext ;
 int MATROSKA_ID_VIDEOFIELDORDER ;
 int MATROSKA_ID_VIDEOFLAGINTERLACED ;
 int MATROSKA_VIDEO_FIELDORDER_BB ;
 int MATROSKA_VIDEO_FIELDORDER_BT ;
 int MATROSKA_VIDEO_FIELDORDER_TB ;
 int MATROSKA_VIDEO_FIELDORDER_TT ;
 int MATROSKA_VIDEO_INTERLACE_FLAG_INTERLACED ;
 int MATROSKA_VIDEO_INTERLACE_FLAG_PROGRESSIVE ;
 int MODE_WEBM ;
 int put_ebml_uint (int *,int ,int ) ;

__attribute__((used)) static void mkv_write_field_order(AVIOContext *pb, int mode,
                                  enum AVFieldOrder field_order)
{
    switch (field_order) {
    case 128:
        break;
    case 131:
        put_ebml_uint(pb, MATROSKA_ID_VIDEOFLAGINTERLACED,
                      MATROSKA_VIDEO_INTERLACE_FLAG_PROGRESSIVE);
        break;
    case 129:
    case 133:
    case 130:
    case 132:
        put_ebml_uint(pb, MATROSKA_ID_VIDEOFLAGINTERLACED,
                      MATROSKA_VIDEO_INTERLACE_FLAG_INTERLACED);
        if (mode != MODE_WEBM) {
            switch (field_order) {
            case 129:
                put_ebml_uint(pb, MATROSKA_ID_VIDEOFIELDORDER,
                              MATROSKA_VIDEO_FIELDORDER_TT);
                break;
            case 133:
                put_ebml_uint(pb, MATROSKA_ID_VIDEOFIELDORDER,
                              MATROSKA_VIDEO_FIELDORDER_BB);
                break;
            case 130:
                put_ebml_uint(pb, MATROSKA_ID_VIDEOFIELDORDER,
                              MATROSKA_VIDEO_FIELDORDER_TB);
                break;
            case 132:
                put_ebml_uint(pb, MATROSKA_ID_VIDEOFIELDORDER,
                              MATROSKA_VIDEO_FIELDORDER_BT);
                break;
            }
        }
    }
}
