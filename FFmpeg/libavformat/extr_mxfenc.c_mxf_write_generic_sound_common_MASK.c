#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  UID ;
struct TYPE_13__ {int /*<<< orphan*/ * oformat; TYPE_2__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_12__ {TYPE_1__* codecpar; } ;
struct TYPE_11__ {int body_offset; int edit_unit_byte_count; int channel_count; int /*<<< orphan*/  footer_partition_offset; } ;
struct TYPE_10__ {int sample_rate; int channels; int /*<<< orphan*/  codec_id; } ;
typedef  TYPE_2__ MXFContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ff_mxf_d10_muxer ; 
 int /*<<< orphan*/  ff_mxf_opatom_muxer ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int64_t FUNC7(AVFormatContext *s, AVStream *st, const UID key)
{
    AVIOContext *pb = s->pb;
    MXFContext *mxf = s->priv_data;
    int show_warnings = !mxf->footer_partition_offset;
    int64_t pos = FUNC5(s, st, key);

    if (s->oformat == &ff_mxf_opatom_muxer) {
        FUNC6(pb, 8, 0x3002);
        FUNC4(pb, mxf->body_offset / mxf->edit_unit_byte_count);
    }

    // audio locked
    FUNC6(pb, 1, 0x3D02);
    FUNC2(pb, 1);

    // write audio sampling rate
    FUNC6(pb, 8, 0x3D03);
    FUNC3(pb, st->codecpar->sample_rate);
    FUNC3(pb, 1);

    if (s->oformat == &ff_mxf_d10_muxer) {
        FUNC6(pb, 1, 0x3D04);
        FUNC2(pb, 0);
    }

    FUNC6(pb, 4, 0x3D07);
    if (mxf->channel_count == -1) {
        if (show_warnings && (s->oformat == &ff_mxf_d10_muxer) && (st->codecpar->channels != 4) && (st->codecpar->channels != 8))
            FUNC1(s, AV_LOG_WARNING, "the number of audio channels shall be 4 or 8 : the output will not comply to MXF D-10 specs, use -d10_channelcount to fix this\n");
        FUNC3(pb, st->codecpar->channels);
    } else if (s->oformat == &ff_mxf_d10_muxer) {
        if (show_warnings && (mxf->channel_count < st->codecpar->channels))
            FUNC1(s, AV_LOG_WARNING, "d10_channelcount < actual number of audio channels : some channels will be discarded\n");
        if (show_warnings && (mxf->channel_count != 4) && (mxf->channel_count != 8))
            FUNC1(s, AV_LOG_WARNING, "d10_channelcount shall be set to 4 or 8 : the output will not comply to MXF D-10 specs\n");
        FUNC3(pb, mxf->channel_count);
    } else {
        FUNC3(pb, st->codecpar->channels);
    }

    FUNC6(pb, 4, 0x3D01);
    FUNC3(pb, FUNC0(st->codecpar->codec_id));

    return pos;
}