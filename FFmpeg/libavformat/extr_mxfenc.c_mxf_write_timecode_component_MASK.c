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
struct TYPE_8__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  start; } ;
struct TYPE_7__ {TYPE_1__ tc; int /*<<< orphan*/  timecode_base; int /*<<< orphan*/  track_instance_count; } ;
typedef  int /*<<< orphan*/  MXFPackage ;
typedef  TYPE_2__ MXFContext ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AV_TIMECODE_FLAG_DROPFRAME ; 
 int /*<<< orphan*/  TimecodeComponent ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(AVFormatContext *s, AVStream *st, MXFPackage *package)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;

    FUNC6(pb, 0x011400);
    FUNC3(pb, 75);

    // UID
    FUNC5(pb, 16, 0x3C0A);
    FUNC7(pb, TimecodeComponent, mxf->track_instance_count);

    FUNC4(s, st);

    // Start Time Code
    FUNC5(pb, 8, 0x1501);
    FUNC2(pb, mxf->tc.start);

    // Rounded Time Code Base
    FUNC5(pb, 2, 0x1502);
    FUNC1(pb, mxf->timecode_base);

    // Drop Frame
    FUNC5(pb, 1, 0x1503);
    FUNC0(pb, !!(mxf->tc.flags & AV_TIMECODE_FLAG_DROPFRAME));
}