#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_22__ {scalar_t__ encryption_scheme; int /*<<< orphan*/  encryption_kid; } ;
struct TYPE_21__ {scalar_t__ tag; scalar_t__ mode; int timescale; int sample_size; scalar_t__ vos_len; TYPE_1__* par; scalar_t__ audio_vbr; } ;
struct TYPE_20__ {int channels; scalar_t__ codec_id; int sample_rate; int bits_per_coded_sample; int bits_per_raw_sample; int frame_size; scalar_t__ codec_type; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  TYPE_3__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AV_CODEC_ID_AAC ; 
 scalar_t__ AV_CODEC_ID_AC3 ; 
 scalar_t__ AV_CODEC_ID_ADPCM_G726 ; 
 scalar_t__ AV_CODEC_ID_ADPCM_IMA_WAV ; 
 scalar_t__ AV_CODEC_ID_ADPCM_MS ; 
 scalar_t__ AV_CODEC_ID_ALAC ; 
 scalar_t__ AV_CODEC_ID_AMR_NB ; 
 scalar_t__ AV_CODEC_ID_EAC3 ; 
 scalar_t__ AV_CODEC_ID_FLAC ; 
 scalar_t__ AV_CODEC_ID_OPUS ; 
 scalar_t__ AV_CODEC_ID_PCM_S8 ; 
 scalar_t__ AV_CODEC_ID_PCM_U8 ; 
 scalar_t__ AV_CODEC_ID_QDM2 ; 
 scalar_t__ AV_CODEC_ID_TRUEHD ; 
 scalar_t__ AV_CODEC_ID_WMAPRO ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char,char,char,char) ; 
 scalar_t__ MODE_MOV ; 
 scalar_t__ MOV_ENC_NONE ; 
 int UINT16_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (TYPE_2__*) ; 
 int FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC16 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC18 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC22 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC23 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC24 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC28(AVFormatContext *s, AVIOContext *pb, MOVMuxContext *mov, MOVTrack *track)
{
    int64_t pos = FUNC4(pb);
    int version = 0;
    uint32_t tag = track->tag;
    int ret = 0;

    if (track->mode == MODE_MOV) {
        if (track->timescale > UINT16_MAX || !track->par->channels) {
            if (FUNC12(track->par->codec_id))
                tag = FUNC0("lpcm");
            version = 2;
        } else if (track->audio_vbr || FUNC14(track->par->codec_id) ||
                   FUNC13(track->par->codec_id) ||
                   track->par->codec_id == AV_CODEC_ID_ADPCM_MS ||
                   track->par->codec_id == AV_CODEC_ID_ADPCM_IMA_WAV ||
                   track->par->codec_id == AV_CODEC_ID_QDM2) {
            version = 1;
        }
    }

    FUNC6(pb, 0); /* size */
    if (mov->encryption_scheme != MOV_ENC_NONE) {
        FUNC10(pb, "enca");
    } else {
        FUNC8(pb, tag); // store it byteswapped
    }
    FUNC6(pb, 0); /* Reserved */
    FUNC5(pb, 0); /* Reserved */
    FUNC5(pb, 1); /* Data-reference index, XXX  == 1 */

    /* SoundDescription */
    FUNC5(pb, version); /* Version */
    FUNC5(pb, 0); /* Revision level */
    FUNC6(pb, 0); /* Reserved */

    if (version == 2) {
        FUNC5(pb, 3);
        FUNC5(pb, 16);
        FUNC5(pb, 0xfffe);
        FUNC5(pb, 0);
        FUNC6(pb, 0x00010000);
        FUNC6(pb, 72);
        FUNC7(pb, FUNC2(track->par->sample_rate));
        FUNC6(pb, track->par->channels);
        FUNC6(pb, 0x7F000000);
        FUNC6(pb, FUNC3(track->par->codec_id));
        FUNC6(pb, FUNC12(track->par->codec_id));
        FUNC6(pb, track->sample_size);
        FUNC6(pb, FUNC11(track));
    } else {
        if (track->mode == MODE_MOV) {
            FUNC5(pb, track->par->channels);
            if (track->par->codec_id == AV_CODEC_ID_PCM_U8 ||
                track->par->codec_id == AV_CODEC_ID_PCM_S8)
                FUNC5(pb, 8); /* bits per sample */
            else if (track->par->codec_id == AV_CODEC_ID_ADPCM_G726)
                FUNC5(pb, track->par->bits_per_coded_sample);
            else
                FUNC5(pb, 16);
            FUNC5(pb, track->audio_vbr ? -2 : 0); /* compression ID */
        } else { /* reserved for mp4/3gp */
            if (track->par->codec_id == AV_CODEC_ID_FLAC ||
                track->par->codec_id == AV_CODEC_ID_ALAC ||
                track->par->codec_id == AV_CODEC_ID_OPUS) {
                FUNC5(pb, track->par->channels);
            } else {
                FUNC5(pb, 2);
            }
            if (track->par->codec_id == AV_CODEC_ID_FLAC ||
                track->par->codec_id == AV_CODEC_ID_ALAC) {
                FUNC5(pb, track->par->bits_per_raw_sample);
            } else {
                FUNC5(pb, 16);
            }
            FUNC5(pb, 0);
        }

        FUNC5(pb, 0); /* packet size (= 0) */
        if (track->par->codec_id == AV_CODEC_ID_OPUS)
            FUNC5(pb, 48000);
        else if (track->par->codec_id == AV_CODEC_ID_TRUEHD)
            FUNC6(pb, track->par->sample_rate);
        else
            FUNC5(pb, track->par->sample_rate <= UINT16_MAX ?
                          track->par->sample_rate : 0);

        if (track->par->codec_id != AV_CODEC_ID_TRUEHD)
            FUNC5(pb, 0); /* Reserved */
    }

    if (version == 1) { /* SoundDescription V1 extended info */
        if (FUNC14(track->par->codec_id) ||
            FUNC13(track->par->codec_id))
            FUNC6(pb, 1); /*  must be 1 for  uncompressed formats */
        else
            FUNC6(pb, track->par->frame_size); /* Samples per packet */
        FUNC6(pb, track->sample_size / track->par->channels); /* Bytes per packet */
        FUNC6(pb, track->sample_size); /* Bytes per frame */
        FUNC6(pb, 2); /* Bytes per sample */
    }

    if (track->mode == MODE_MOV &&
        (track->par->codec_id == AV_CODEC_ID_AAC           ||
         track->par->codec_id == AV_CODEC_ID_AC3           ||
         track->par->codec_id == AV_CODEC_ID_EAC3          ||
         track->par->codec_id == AV_CODEC_ID_AMR_NB        ||
         track->par->codec_id == AV_CODEC_ID_ALAC          ||
         track->par->codec_id == AV_CODEC_ID_ADPCM_MS      ||
         track->par->codec_id == AV_CODEC_ID_ADPCM_IMA_WAV ||
         track->par->codec_id == AV_CODEC_ID_QDM2          ||
         (FUNC14(track->par->codec_id) && version==1) ||
         (FUNC13(track->par->codec_id) && version==1)))
        ret = FUNC25(s, pb, track);
    else if (track->tag == FUNC1('m','p','4','a'))
        ret = FUNC22(pb, track);
    else if (track->par->codec_id == AV_CODEC_ID_AMR_NB)
        ret = FUNC16(pb, track);
    else if (track->par->codec_id == AV_CODEC_ID_AC3)
        ret = FUNC15(s, pb, track);
    else if (track->par->codec_id == AV_CODEC_ID_EAC3)
        ret = FUNC21(s, pb, track);
    else if (track->par->codec_id == AV_CODEC_ID_ALAC)
        ret = FUNC23(pb, track);
    else if (track->par->codec_id == AV_CODEC_ID_WMAPRO)
        ret = FUNC26(s, pb, track);
    else if (track->par->codec_id == AV_CODEC_ID_FLAC)
        ret = FUNC18(pb, track);
    else if (track->par->codec_id == AV_CODEC_ID_OPUS)
        ret = FUNC20(s, pb, track);
    else if (track->par->codec_id == AV_CODEC_ID_TRUEHD)
        ret = FUNC19(s, pb, track);
    else if (track->vos_len > 0)
        ret = FUNC24(pb, track);

    if (ret < 0)
        return ret;

    if (track->mode == MODE_MOV && track->par->codec_type == AVMEDIA_TYPE_AUDIO
            && ((ret = FUNC17(s, pb, track)) < 0)) {
        return ret;
    }

    if (mov->encryption_scheme != MOV_ENC_NONE
            && ((ret = FUNC9(track, pb, mov->encryption_kid)) < 0)) {
        return ret;
    }

    ret = FUNC27(pb, pos);
    return ret;
}