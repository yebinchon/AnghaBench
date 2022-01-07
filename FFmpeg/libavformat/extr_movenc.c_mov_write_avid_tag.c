
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int* vos_data; int vos_len; scalar_t__ tag; TYPE_2__* par; } ;
struct TYPE_5__ {int num; int den; } ;
struct TYPE_6__ {int width; scalar_t__ color_range; int height; TYPE_1__ sample_aspect_ratio; } ;
typedef TYPE_3__ MOVTrack ;
typedef int AVIOContext ;


 scalar_t__ AVCOL_RANGE_MPEG ;
 scalar_t__ AVCOL_RANGE_UNSPECIFIED ;
 int AV_LOG_WARNING ;
 int AV_RB32 (int*) ;
 scalar_t__ MKTAG (char,char,char,char) ;
 int av_log (int *,int ,char*) ;
 int avio_wb32 (int *,int) ;
 int avio_wb64 (int *,int ) ;
 scalar_t__ ff_dnxhd_parse_header_prefix (int*) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_avid_tag(AVIOContext *pb, MOVTrack *track)
{
    int i;
    int interlaced;
    int cid;
    int display_width = track->par->width;

    if (track->vos_data && track->vos_len > 0x29) {
        if (ff_dnxhd_parse_header_prefix(track->vos_data) != 0) {

            interlaced = (track->vos_data[5] & 2);
            cid = AV_RB32(track->vos_data + 0x28);
        } else {
            av_log(((void*)0), AV_LOG_WARNING, "Could not locate DNxHD bit stream in vos_data\n");
            return 0;
        }
    } else {
        av_log(((void*)0), AV_LOG_WARNING, "Could not locate DNxHD bit stream, vos_data too small\n");
        return 0;
    }

    avio_wb32(pb, 24);
    ffio_wfourcc(pb, "ACLR");
    ffio_wfourcc(pb, "ACLR");
    ffio_wfourcc(pb, "0001");
    if (track->par->color_range == AVCOL_RANGE_MPEG ||
        track->par->color_range == AVCOL_RANGE_UNSPECIFIED) {
        avio_wb32(pb, 1);
    } else {
        avio_wb32(pb, 2);
    }
    avio_wb32(pb, 0);

    if (track->tag == MKTAG('A','V','d','h')) {
        avio_wb32(pb, 32);
        ffio_wfourcc(pb, "ADHR");
        ffio_wfourcc(pb, "0001");
        avio_wb32(pb, cid);
        avio_wb32(pb, 0);
        avio_wb32(pb, 1);
        avio_wb32(pb, 0);
        avio_wb32(pb, 0);
        return 0;
    }

    avio_wb32(pb, 24);
    ffio_wfourcc(pb, "APRG");
    ffio_wfourcc(pb, "APRG");
    ffio_wfourcc(pb, "0001");
    avio_wb32(pb, 1);
    avio_wb32(pb, 0);

    avio_wb32(pb, 120);
    ffio_wfourcc(pb, "ARES");
    ffio_wfourcc(pb, "ARES");
    ffio_wfourcc(pb, "0001");
    avio_wb32(pb, cid);
    if ( track->par->sample_aspect_ratio.num > 0
        && track->par->sample_aspect_ratio.den > 0)
        display_width = display_width * track->par->sample_aspect_ratio.num / track->par->sample_aspect_ratio.den;
    avio_wb32(pb, display_width);

    if (interlaced) {
        avio_wb32(pb, track->par->height / 2);
        avio_wb32(pb, 2);
        avio_wb32(pb, 0);
        avio_wb32(pb, 4);
    } else {
        avio_wb32(pb, track->par->height);
        avio_wb32(pb, 1);
        avio_wb32(pb, 0);
        if (track->par->height == 1080)
            avio_wb32(pb, 5);
        else
            avio_wb32(pb, 6);
    }

    for (i = 0; i < 10; i++)
        avio_wb64(pb, 0);

    return 0;
}
