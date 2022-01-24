#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {int /*<<< orphan*/ * oformat; TYPE_8__* pb; TYPE_6__* priv_data; } ;
struct TYPE_28__ {scalar_t__ buf_ptr; } ;
struct TYPE_27__ {scalar_t__ index; TYPE_4__* priv_data; } ;
struct TYPE_23__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_21__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_22__ {TYPE_1__ rate; } ;
struct TYPE_26__ {int /*<<< orphan*/  track_instance_count; TYPE_3__ time_base; TYPE_2__ tc; TYPE_7__* timecode_track; } ;
struct TYPE_25__ {scalar_t__ type; } ;
struct TYPE_24__ {scalar_t__ track_essence_element_key; } ;
typedef  TYPE_4__ MXFStreamContext ;
typedef  TYPE_5__ MXFPackage ;
typedef  TYPE_6__ MXFContext ;
typedef  TYPE_7__ AVStream ;
typedef  TYPE_8__ AVIOContext ;
typedef  TYPE_9__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ MaterialPackage ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  Sequence ; 
 int /*<<< orphan*/  Track ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,scalar_t__,int) ; 
 int /*<<< orphan*/  ff_mxf_opatom_muxer ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(AVFormatContext *s, AVStream *st, MXFPackage *package)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    MXFStreamContext *sc = st->priv_data;

    FUNC6(pb, 0x013b00);
    FUNC0(s, "track key", pb->buf_ptr - 16);
    FUNC4(pb, 80);

    // write track uid
    FUNC5(pb, 16, 0x3C0A);
    FUNC7(pb, Track, mxf->track_instance_count);
    FUNC0(s, "track uid", pb->buf_ptr - 16);

    // write track id
    FUNC5(pb, 4, 0x4801);
    FUNC1(pb, st->index+2);

    // write track number
    FUNC5(pb, 4, 0x4804);
    if (package->type == MaterialPackage)
        FUNC1(pb, 0); // track number of material package is 0
    else
        FUNC3(pb, sc->track_essence_element_key + 12, 4);

    // write edit rate
    FUNC5(pb, 8, 0x4B01);

    if (st == mxf->timecode_track && s->oformat == &ff_mxf_opatom_muxer) {
        FUNC1(pb, mxf->tc.rate.num);
        FUNC1(pb, mxf->tc.rate.den);
    } else {
        FUNC1(pb, mxf->time_base.den);
        FUNC1(pb, mxf->time_base.num);
    }

    // write origin
    FUNC5(pb, 8, 0x4B02);
    FUNC2(pb, 0);

    // write sequence refs
    FUNC5(pb, 16, 0x4803);
    FUNC7(pb, Sequence, mxf->track_instance_count);
}