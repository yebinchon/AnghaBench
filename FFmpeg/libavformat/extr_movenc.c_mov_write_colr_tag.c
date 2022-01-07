
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int height; scalar_t__ mode; TYPE_1__* par; } ;
struct TYPE_4__ {int color_primaries; int color_trc; int color_space; int width; int height; scalar_t__ color_range; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;
 int AVCOL_PRI_UNSPECIFIED ;
 scalar_t__ AVCOL_RANGE_JPEG ;





 int AVCOL_SPC_UNSPECIFIED ;






 int AVCOL_TRC_UNSPECIFIED ;
 int AV_LOG_WARNING ;
 scalar_t__ MODE_MOV ;
 scalar_t__ MODE_MP4 ;
 int av_assert0 (int) ;
 int av_log (int *,int ,char*) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int ) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_colr_tag(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);




    if (track->par->color_primaries == AVCOL_PRI_UNSPECIFIED &&
        track->par->color_trc == AVCOL_TRC_UNSPECIFIED &&
        track->par->color_space == AVCOL_SPC_UNSPECIFIED) {
        if ((track->par->width >= 1920 && track->par->height >= 1080)
          || (track->par->width == 1280 && track->par->height == 720)) {
            av_log(((void*)0), AV_LOG_WARNING, "color primaries unspecified, assuming bt709\n");
            track->par->color_primaries = 143;
        } else if (track->par->width == 720 && track->height == 576) {
            av_log(((void*)0), AV_LOG_WARNING, "color primaries unspecified, assuming bt470bg\n");
            track->par->color_primaries = 144;
        } else if (track->par->width == 720 &&
                   (track->height == 486 || track->height == 480)) {
            av_log(((void*)0), AV_LOG_WARNING, "color primaries unspecified, assuming smpte170\n");
            track->par->color_primaries = 142;
        } else {
            av_log(((void*)0), AV_LOG_WARNING, "color primaries unspecified, unable to assume anything\n");
        }
        switch (track->par->color_primaries) {
        case 143:
            track->par->color_trc = 132;
            track->par->color_space = 136;
            break;
        case 142:
        case 144:
            track->par->color_trc = 132;
            track->par->color_space = 135;
            break;
        }
    }


    av_assert0(track->mode == MODE_MOV || track->mode == MODE_MP4);

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "colr");
    if (track->mode == MODE_MP4)
        ffio_wfourcc(pb, "nclx");
    else
        ffio_wfourcc(pb, "nclc");
    switch (track->par->color_primaries) {
    case 143: avio_wb16(pb, 1); break;
    case 144: avio_wb16(pb, 5); break;
    case 142:
    case 141: avio_wb16(pb, 6); break;
    case 145: avio_wb16(pb, 9); break;
    case 140: avio_wb16(pb, 11); break;
    case 139: avio_wb16(pb, 12); break;
    default: avio_wb16(pb, 2);
    }
    switch (track->par->color_trc) {
    case 132: avio_wb16(pb, 1); break;
    case 131: avio_wb16(pb, 1); break;
    case 130: avio_wb16(pb, 7); break;
    case 128: avio_wb16(pb, 16); break;
    case 129: avio_wb16(pb, 17); break;
    case 133: avio_wb16(pb, 18); break;
    default: avio_wb16(pb, 2);
    }
    switch (track->par->color_space) {
    case 136: avio_wb16(pb, 1); break;
    case 137:
    case 135: avio_wb16(pb, 6); break;
    case 134: avio_wb16(pb, 7); break;
    case 138: avio_wb16(pb, 9); break;
    default: avio_wb16(pb, 2);
    }

    if (track->mode == MODE_MP4) {
        int full_range = track->par->color_range == AVCOL_RANGE_JPEG;
        avio_w8(pb, full_range << 7);
    }

    return update_size(pb, pos);
}
