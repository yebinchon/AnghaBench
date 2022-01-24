#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  enum MXFMetadataSetType { ____Placeholder_MXFMetadataSetType } MXFMetadataSetType ;
struct TYPE_14__ {TYPE_2__* pb; TYPE_1__* priv_data; } ;
struct TYPE_13__ {scalar_t__ buf_ptr; } ;
struct TYPE_12__ {int /*<<< orphan*/  track_instance_count; int /*<<< orphan*/ * timecode_track; } ;
typedef  int /*<<< orphan*/  MXFPackage ;
typedef  TYPE_1__ MXFContext ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  TYPE_2__ AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,scalar_t__) ; 
 int Sequence ; 
 int SourceClip ; 
 int TimecodeComponent ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(AVFormatContext *s, AVStream *st, MXFPackage *package)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    enum MXFMetadataSetType component;

    FUNC4(pb, 0x010f00);
    FUNC0(s, "sequence key", pb->buf_ptr - 16);
    FUNC1(pb, 80);

    FUNC3(pb, 16, 0x3C0A);
    FUNC6(pb, Sequence, mxf->track_instance_count);

    FUNC0(s, "sequence uid", pb->buf_ptr - 16);
    FUNC2(s, st);

    // write structural component
    FUNC3(pb, 16 + 8, 0x1001);
    FUNC5(pb, 1);
    if (st == mxf->timecode_track)
        component = TimecodeComponent;
    else
        component = SourceClip;

    FUNC6(pb, component, mxf->track_instance_count);
}