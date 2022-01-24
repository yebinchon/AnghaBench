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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_8__ {int buffer_size; int /*<<< orphan*/  avg_bitrate; int /*<<< orphan*/  max_bitrate; } ;
struct TYPE_7__ {int vos_len; int /*<<< orphan*/  vos_data; TYPE_1__* par; int /*<<< orphan*/  st; int /*<<< orphan*/  track_id; } ;
struct TYPE_6__ {scalar_t__ codec_id; int sample_rate; scalar_t__ codec_type; int /*<<< orphan*/  bit_rate; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVCPBProperties ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AV_CODEC_ID_DVD_SUBTITLE ; 
 scalar_t__ AV_CODEC_ID_MP2 ; 
 scalar_t__ AV_CODEC_ID_MP3 ; 
 int /*<<< orphan*/  AV_PKT_DATA_CPB_PROPERTIES ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC9 (TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ff_mp4_obj_type ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(AVIOContext *pb, MOVTrack *track) // Basic
{
    AVCPBProperties *props;
    int64_t pos = FUNC3(pb);
    int decoder_specific_info_len = track->vos_len ? 5 + track->vos_len : 0;
    unsigned avg_bitrate;

    FUNC7(pb, 0); // size
    FUNC11(pb, "esds");
    FUNC7(pb, 0); // Version

    // ES descriptor
    FUNC12(pb, 0x03, 3 + 5+13 + decoder_specific_info_len + 5+1);
    FUNC5(pb, track->track_id);
    FUNC4(pb, 0x00); // flags (= no flags)

    // DecoderConfig descriptor
    FUNC12(pb, 0x04, 13 + decoder_specific_info_len);

    // Object type indication
    if ((track->par->codec_id == AV_CODEC_ID_MP2 ||
         track->par->codec_id == AV_CODEC_ID_MP3) &&
        track->par->sample_rate > 24000)
        FUNC4(pb, 0x6B); // 11172-3
    else
        FUNC4(pb, FUNC10(ff_mp4_obj_type, track->par->codec_id));

    // the following fields is made of 6 bits to identify the streamtype (4 for video, 5 for audio)
    // plus 1 bit to indicate upstream and 1 bit set to 1 (reserved)
    if (track->par->codec_id == AV_CODEC_ID_DVD_SUBTITLE)
        FUNC4(pb, (0x38 << 2) | 1); // flags (= NeroSubpicStream)
    else if (track->par->codec_type == AVMEDIA_TYPE_AUDIO)
        FUNC4(pb, 0x15); // flags (= Audiostream)
    else
        FUNC4(pb, 0x11); // flags (= Visualstream)

    props = (AVCPBProperties*)FUNC2(track->st, AV_PKT_DATA_CPB_PROPERTIES,
                                                      NULL);

    FUNC6(pb, props ? props->buffer_size / 8 : 0); // Buffersize DB

    avg_bitrate = FUNC9(track);
    FUNC7(pb, props ? FUNC1(props->max_bitrate, props->avg_bitrate, avg_bitrate) : FUNC0(track->par->bit_rate, avg_bitrate)); // maxbitrate (FIXME should be max rate in any 1 sec window)
    FUNC7(pb, avg_bitrate);

    if (track->vos_len) {
        // DecoderSpecific info descriptor
        FUNC12(pb, 0x05, track->vos_len);
        FUNC8(pb, track->vos_data, track->vos_len);
    }

    // SL descriptor
    FUNC12(pb, 0x06, 1);
    FUNC4(pb, 0x02);
    return FUNC13(pb, pos);
}