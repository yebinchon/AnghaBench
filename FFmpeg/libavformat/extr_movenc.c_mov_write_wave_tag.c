
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_11__ {TYPE_1__* par; int tag; } ;
struct TYPE_10__ {scalar_t__ codec_id; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 scalar_t__ AV_CODEC_ID_AAC ;
 scalar_t__ AV_CODEC_ID_AC3 ;
 scalar_t__ AV_CODEC_ID_ADPCM_IMA_WAV ;
 scalar_t__ AV_CODEC_ID_ADPCM_MS ;
 scalar_t__ AV_CODEC_ID_ALAC ;
 scalar_t__ AV_CODEC_ID_AMR_NB ;
 scalar_t__ AV_CODEC_ID_EAC3 ;
 scalar_t__ AV_CODEC_ID_QDM2 ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int) ;
 int avio_wl32 (int *,int ) ;
 int ffio_wfourcc (int *,char*) ;
 scalar_t__ mov_pcm_be_gt16 (scalar_t__) ;
 scalar_t__ mov_pcm_le_gt16 (scalar_t__) ;
 int mov_write_ac3_tag (int *,int *,TYPE_2__*) ;
 int mov_write_amr_tag (int *,TYPE_2__*) ;
 int mov_write_eac3_tag (int *,int *,TYPE_2__*) ;
 int mov_write_enda_tag (int *) ;
 int mov_write_enda_tag_be (int *) ;
 int mov_write_esds_tag (int *,TYPE_2__*) ;
 int mov_write_extradata_tag (int *,TYPE_2__*) ;
 int mov_write_ms_tag (int *,int *,TYPE_2__*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_wave_tag(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "wave");

    if (track->par->codec_id != AV_CODEC_ID_QDM2) {
    avio_wb32(pb, 12);
    ffio_wfourcc(pb, "frma");
    avio_wl32(pb, track->tag);
    }

    if (track->par->codec_id == AV_CODEC_ID_AAC) {

        avio_wb32(pb, 12);
        ffio_wfourcc(pb, "mp4a");
        avio_wb32(pb, 0);
        mov_write_esds_tag(pb, track);
    } else if (mov_pcm_le_gt16(track->par->codec_id)) {
      mov_write_enda_tag(pb);
    } else if (mov_pcm_be_gt16(track->par->codec_id)) {
      mov_write_enda_tag_be(pb);
    } else if (track->par->codec_id == AV_CODEC_ID_AMR_NB) {
        mov_write_amr_tag(pb, track);
    } else if (track->par->codec_id == AV_CODEC_ID_AC3) {
        mov_write_ac3_tag(s, pb, track);
    } else if (track->par->codec_id == AV_CODEC_ID_EAC3) {
        mov_write_eac3_tag(s, pb, track);
    } else if (track->par->codec_id == AV_CODEC_ID_ALAC ||
               track->par->codec_id == AV_CODEC_ID_QDM2) {
        mov_write_extradata_tag(pb, track);
    } else if (track->par->codec_id == AV_CODEC_ID_ADPCM_MS ||
               track->par->codec_id == AV_CODEC_ID_ADPCM_IMA_WAV) {
        mov_write_ms_tag(s, pb, track);
    }

    avio_wb32(pb, 8);
    avio_wb32(pb, 0);

    return update_size(pb, pos);
}
