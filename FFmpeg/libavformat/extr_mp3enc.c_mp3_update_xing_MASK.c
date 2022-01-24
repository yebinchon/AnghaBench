#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_8__ {int /*<<< orphan*/  pb; int /*<<< orphan*/ * streams; TYPE_1__* priv_data; } ;
struct TYPE_7__ {scalar_t__ track_gain; scalar_t__ album_gain; int /*<<< orphan*/  track_peak; } ;
struct TYPE_6__ {int xing_offset; long long frames; long long size; int pos; long long* bag; int delay; int padding; long long audio_size; int audio_crc; int /*<<< orphan*/  xing_frame_size; scalar_t__* xing_frame; int /*<<< orphan*/  xing_frame_offset; int /*<<< orphan*/  has_variable_bitrate; } ;
typedef  TYPE_1__ MP3Context ;
typedef  TYPE_2__ AVReplayGain ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CRC_16_ANSI_LE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_PKT_DATA_REPLAYGAIN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,long long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int) ; 
 scalar_t__ INT32_MIN ; 
 int /*<<< orphan*/  FUNC6 (char,char,float,char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int XING_SIZE ; 
 int XING_TOC_SIZE ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 long long FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(AVFormatContext *s)
{
    MP3Context  *mp3 = s->priv_data;
    AVReplayGain *rg;
    uint16_t tag_crc;
    uint8_t *toc;
    int i, rg_size;
    int64_t old_pos = FUNC13(s->pb);

    /* replace "Xing" identification string with "Info" for CBR files. */
    if (!mp3->has_variable_bitrate)
        FUNC3(mp3->xing_frame + mp3->xing_offset, FUNC6('I', 'n', 'f', 'o'));

    FUNC2(mp3->xing_frame + mp3->xing_offset + 8,  mp3->frames);
    FUNC2(mp3->xing_frame + mp3->xing_offset + 12, mp3->size);

    toc    = mp3->xing_frame + mp3->xing_offset + 16;
    toc[0] = 0;  // first toc entry has to be zero.
    for (i = 1; i < XING_TOC_SIZE; ++i) {
        int j = i * mp3->pos / XING_TOC_SIZE;
        int seek_point = 256LL * mp3->bag[j] / mp3->size;
        toc[i] = FUNC5(seek_point, 255);
    }

    /* write replaygain */
    rg = (AVReplayGain*)FUNC11(s->streams[0], AV_PKT_DATA_REPLAYGAIN,
                                                &rg_size);
    if (rg && rg_size >= sizeof(*rg)) {
        uint16_t val;

        FUNC2(mp3->xing_frame + mp3->xing_offset + 131,
                FUNC10(rg->track_peak, 1 << 23, 100000));

        if (rg->track_gain != INT32_MIN) {
            val  = FUNC4(rg->track_gain / 10000) & ((1 << 9) - 1);
            val |= (rg->track_gain < 0) << 9;
            val |= 1 << 13;
            FUNC0(mp3->xing_frame + mp3->xing_offset + 135, val);
        }

        if (rg->album_gain != INT32_MIN) {
            val  = FUNC4(rg->album_gain / 10000) & ((1 << 9) - 1);
            val |= (rg->album_gain < 0) << 9;
            val |= 1 << 14;
            FUNC0(mp3->xing_frame + mp3->xing_offset + 137, val);
        }
    }

    /* write encoder delay/padding */
    if (mp3->delay >= 1 << 12) {
        mp3->delay = (1 << 12) - 1;
        FUNC9(s, AV_LOG_WARNING, "Too many samples of initial padding.\n");
    }
    if (mp3->padding >= 1 << 12) {
        mp3->padding = (1 << 12) - 1;
        FUNC9(s, AV_LOG_WARNING, "Too many samples of trailing padding.\n");
    }
    FUNC1(mp3->xing_frame + mp3->xing_offset + 141, (mp3->delay << 12) + mp3->padding);

    FUNC2(mp3->xing_frame + mp3->xing_offset + XING_SIZE - 8, mp3->audio_size);
    FUNC0(mp3->xing_frame + mp3->xing_offset + XING_SIZE - 4, mp3->audio_crc);

    tag_crc = FUNC7(FUNC8(AV_CRC_16_ANSI_LE), 0, mp3->xing_frame, 190);
    FUNC0(mp3->xing_frame + mp3->xing_offset + XING_SIZE - 2, tag_crc);

    FUNC12(s->pb,  mp3->xing_frame_offset, SEEK_SET);
    FUNC14(s->pb, mp3->xing_frame, mp3->xing_frame_size);
    FUNC12(s->pb, old_pos, SEEK_SET);
}