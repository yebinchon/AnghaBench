
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {scalar_t__ tag; scalar_t__ mode; TYPE_1__* par; } ;
struct TYPE_7__ {scalar_t__ codec_type; } ;
typedef TYPE_2__ MOVTrack ;
typedef int MOVMuxContext ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 scalar_t__ MKTAG (char,char,char,char) ;
 scalar_t__ MODE_MOV ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int ) ;
 int ffio_wfourcc (int *,char*) ;
 scalar_t__ is_clcp_track (TYPE_2__*) ;
 int mov_write_dinf_tag (int *) ;
 int mov_write_gmhd_tag (int *,TYPE_2__*) ;
 int mov_write_hdlr_tag (int *,int *,int *) ;
 int mov_write_hmhd_tag (int *) ;
 int mov_write_nmhd_tag (int *) ;
 int mov_write_smhd_tag (int *) ;
 int mov_write_stbl_tag (int *,int *,int *,TYPE_2__*) ;
 int mov_write_vmhd_tag (int *) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_minf_tag(AVFormatContext *s, AVIOContext *pb, MOVMuxContext *mov, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);
    int ret;

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "minf");
    if (track->par->codec_type == AVMEDIA_TYPE_VIDEO)
        mov_write_vmhd_tag(pb);
    else if (track->par->codec_type == AVMEDIA_TYPE_AUDIO)
        mov_write_smhd_tag(pb);
    else if (track->par->codec_type == AVMEDIA_TYPE_SUBTITLE) {
        if (track->tag == MKTAG('t','e','x','t') || is_clcp_track(track)) {
            mov_write_gmhd_tag(pb, track);
        } else {
            mov_write_nmhd_tag(pb);
        }
    } else if (track->tag == MKTAG('r','t','p',' ')) {
        mov_write_hmhd_tag(pb);
    } else if (track->tag == MKTAG('t','m','c','d')) {
        if (track->mode != MODE_MOV)
            mov_write_nmhd_tag(pb);
        else
            mov_write_gmhd_tag(pb, track);
    } else if (track->tag == MKTAG('g','p','m','d')) {
        mov_write_gmhd_tag(pb, track);
    }
    if (track->mode == MODE_MOV)
        mov_write_hdlr_tag(s, pb, ((void*)0));
    mov_write_dinf_tag(pb);
    if ((ret = mov_write_stbl_tag(s, pb, mov, track)) < 0)
        return ret;
    return update_size(pb, pos);
}
