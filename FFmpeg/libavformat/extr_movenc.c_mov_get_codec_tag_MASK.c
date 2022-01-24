#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ strict_std_compliance; } ;
struct TYPE_18__ {TYPE_1__* par; } ;
struct TYPE_17__ {unsigned int codec_tag; scalar_t__ codec_id; scalar_t__ codec_type; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ AV_CODEC_ID_DNXHD ; 
 scalar_t__ AV_CODEC_ID_DVVIDEO ; 
 scalar_t__ AV_CODEC_ID_H263 ; 
 scalar_t__ AV_CODEC_ID_H264 ; 
 scalar_t__ AV_CODEC_ID_MPEG2VIDEO ; 
 scalar_t__ AV_CODEC_ID_RAWVIDEO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ FF_COMPLIANCE_NORMAL ; 
 unsigned int FUNC0 (char,char,int,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ff_codec_bmp_tags ; 
 void* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ff_codec_movaudio_tags ; 
 int /*<<< orphan*/  ff_codec_movsubtitle_tags ; 
 int /*<<< orphan*/  ff_codec_movvideo_tags ; 
 int /*<<< orphan*/  ff_codec_wav_tags ; 
 unsigned int FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 unsigned int FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 unsigned int FUNC6 (TYPE_3__*,TYPE_2__*) ; 
 unsigned int FUNC7 (TYPE_3__*,TYPE_2__*) ; 
 unsigned int FUNC8 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static unsigned int FUNC9(AVFormatContext *s, MOVTrack *track)
{
    unsigned int tag = track->par->codec_tag;

    if (!tag || (s->strict_std_compliance >= FF_COMPLIANCE_NORMAL &&
                 (track->par->codec_id == AV_CODEC_ID_DVVIDEO ||
                  track->par->codec_id == AV_CODEC_ID_RAWVIDEO ||
                  track->par->codec_id == AV_CODEC_ID_H263 ||
                  track->par->codec_id == AV_CODEC_ID_H264 ||
                  track->par->codec_id == AV_CODEC_ID_DNXHD ||
                  track->par->codec_id == AV_CODEC_ID_MPEG2VIDEO ||
                  FUNC1(track->par->codec_id)))) { // pcm audio
        if (track->par->codec_id == AV_CODEC_ID_DVVIDEO)
            tag = FUNC5(s, track);
        else if (track->par->codec_id == AV_CODEC_ID_RAWVIDEO)
            tag = FUNC8(s, track);
        else if (track->par->codec_id == AV_CODEC_ID_MPEG2VIDEO)
            tag = FUNC7(s, track);
        else if (track->par->codec_id == AV_CODEC_ID_H264)
            tag = FUNC6(s, track);
        else if (track->par->codec_id == AV_CODEC_ID_DNXHD)
            tag = FUNC4(s, track);
        else if (track->par->codec_type == AVMEDIA_TYPE_VIDEO) {
            tag = FUNC3(ff_codec_movvideo_tags, track->par->codec_id);
            if (!tag) { // if no mac fcc found, try with Microsoft tags
                tag = FUNC3(ff_codec_bmp_tags, track->par->codec_id);
                if (tag)
                    FUNC2(s, AV_LOG_WARNING, "Using MS style video codec tag, "
                           "the file may be unplayable!\n");
            }
        } else if (track->par->codec_type == AVMEDIA_TYPE_AUDIO) {
            tag = FUNC3(ff_codec_movaudio_tags, track->par->codec_id);
            if (!tag) { // if no mac fcc found, try with Microsoft tags
                int ms_tag = FUNC3(ff_codec_wav_tags, track->par->codec_id);
                if (ms_tag) {
                    tag = FUNC0('m', 's', ((ms_tag >> 8) & 0xff), (ms_tag & 0xff));
                    FUNC2(s, AV_LOG_WARNING, "Using MS style audio codec tag, "
                           "the file may be unplayable!\n");
                }
            }
        } else if (track->par->codec_type == AVMEDIA_TYPE_SUBTITLE)
            tag = FUNC3(ff_codec_movsubtitle_tags, track->par->codec_id);
    }

    return tag;
}