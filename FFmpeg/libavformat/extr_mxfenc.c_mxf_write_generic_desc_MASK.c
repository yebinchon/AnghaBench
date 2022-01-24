#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  UID ;
struct TYPE_16__ {int /*<<< orphan*/  const container_ul; } ;
struct TYPE_15__ {int /*<<< orphan*/ * oformat; int /*<<< orphan*/ * pb; TYPE_4__* priv_data; } ;
struct TYPE_14__ {int index; TYPE_1__* codecpar; TYPE_3__* priv_data; } ;
struct TYPE_11__ {int den; int num; } ;
struct TYPE_13__ {TYPE_2__ time_base; } ;
struct TYPE_12__ {size_t index; } ;
struct TYPE_10__ {scalar_t__ codec_id; int sample_rate; } ;
typedef  TYPE_3__ MXFStreamContext ;
typedef  TYPE_4__ MXFContext ;
typedef  TYPE_5__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_PCM_S16LE ; 
 scalar_t__ AV_CODEC_ID_PCM_S24LE ; 
 int /*<<< orphan*/  SubDescriptor ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  ff_mxf_d10_muxer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_9__* mxf_essence_container_uls ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int64_t FUNC6(AVFormatContext *s, AVStream *st, const UID key)
{
    MXFContext *mxf = s->priv_data;
    MXFStreamContext *sc = st->priv_data;
    AVIOContext *pb = s->pb;
    int64_t pos;

    FUNC2(pb, key, 16);
    FUNC3(pb, 0);
    pos = FUNC0(pb);

    FUNC4(pb, 16, 0x3C0A);
    FUNC5(pb, SubDescriptor, st->index);

    FUNC4(pb, 4, 0x3006);
    FUNC1(pb, st->index+2);

    FUNC4(pb, 8, 0x3001);
    if (s->oformat == &ff_mxf_d10_muxer) {
        FUNC1(pb, mxf->time_base.den);
        FUNC1(pb, mxf->time_base.num);
    } else {
        if (st->codecpar->codec_id == AV_CODEC_ID_PCM_S16LE ||
            st->codecpar->codec_id == AV_CODEC_ID_PCM_S24LE) {
            FUNC1(pb, st->codecpar->sample_rate);
            FUNC1(pb, 1);
        } else {
            FUNC1(pb, mxf->time_base.den);
            FUNC1(pb, mxf->time_base.num);
        }
    }

    FUNC4(pb, 16, 0x3004);
    FUNC2(pb, mxf_essence_container_uls[sc->index].container_ul, 16);

    return pos;
}