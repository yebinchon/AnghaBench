#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * oformat; int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_12__ {TYPE_1__* codecpar; } ;
struct TYPE_11__ {int /*<<< orphan*/  uid; } ;
struct TYPE_10__ {int body_offset; int edit_unit_byte_count; int duration; TYPE_4__* timecode_track; } ;
struct TYPE_9__ {scalar_t__ codec_type; } ;
typedef  TYPE_2__ MXFContext ;
typedef  TYPE_3__ MXFCodecUL ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ff_mxf_opatom_muxer ; 
 TYPE_3__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  smpte_12m_timecode_track_data_ul ; 

__attribute__((used)) static void FUNC4(AVFormatContext *s, AVStream *st)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;

    // find data define uls
    FUNC3(pb, 16, 0x0201);
    if (st == mxf->timecode_track)
        FUNC1(pb, smpte_12m_timecode_track_data_ul, 16);
    else {
        const MXFCodecUL *data_def_ul = FUNC2(st->codecpar->codec_type);
        FUNC1(pb, data_def_ul->uid, 16);
    }

    // write duration
    FUNC3(pb, 8, 0x0202);

    if (st != mxf->timecode_track && s->oformat == &ff_mxf_opatom_muxer && st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) {
        FUNC0(pb, mxf->body_offset / mxf->edit_unit_byte_count);
    } else {
        FUNC0(pb, mxf->duration);
    }
}