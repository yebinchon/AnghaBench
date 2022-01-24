#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_23__ {long long nb_streams; TYPE_2__** streams; TYPE_5__* pb; TYPE_4__* priv_data; } ;
struct TYPE_22__ {scalar_t__ buf_ptr; } ;
struct TYPE_18__ {int /*<<< orphan*/  num; int /*<<< orphan*/  den; } ;
struct TYPE_21__ {int essence_container_count; TYPE_1__ time_base; } ;
struct TYPE_20__ {size_t index; } ;
struct TYPE_19__ {TYPE_3__* priv_data; } ;
struct TYPE_17__ {int /*<<< orphan*/ * container_ul; } ;
typedef  TYPE_3__ MXFStreamContext ;
typedef  TYPE_4__ MXFContext ;
typedef  TYPE_5__ AVIOContext ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  MultipleDescriptor ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  SubDescriptor ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/ * multiple_desc_ul ; 
 TYPE_12__* mxf_essence_container_uls ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    const uint8_t *ul;
    int i;

    FUNC5(pb, 0x014400);
    FUNC0(s, "multiple descriptor key", pb->buf_ptr - 16);
    FUNC3(pb, 64 + 16LL * s->nb_streams);

    FUNC4(pb, 16, 0x3C0A);
    FUNC7(pb, MultipleDescriptor, 0);
    FUNC0(s, "multi_desc uid", pb->buf_ptr - 16);

    // write sample rate
    FUNC4(pb, 8, 0x3001);
    FUNC1(pb, mxf->time_base.den);
    FUNC1(pb, mxf->time_base.num);

    // write essence container ul
    FUNC4(pb, 16, 0x3004);
    if (mxf->essence_container_count > 1)
        ul = multiple_desc_ul;
    else {
        MXFStreamContext *sc = s->streams[0]->priv_data;
        ul = mxf_essence_container_uls[sc->index].container_ul;
    }
    FUNC2(pb, ul, 16);

    // write sub descriptor refs
    FUNC4(pb, s->nb_streams * 16 + 8, 0x3F01);
    FUNC6(pb, s->nb_streams);
    for (i = 0; i < s->nb_streams; i++)
        FUNC7(pb, SubDescriptor, i);
}