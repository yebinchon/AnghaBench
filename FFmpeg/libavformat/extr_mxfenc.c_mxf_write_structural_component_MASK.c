#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {TYPE_5__* pb; TYPE_3__* priv_data; } ;
struct TYPE_24__ {scalar_t__ buf_ptr; } ;
struct TYPE_23__ {scalar_t__ index; } ;
struct TYPE_22__ {int /*<<< orphan*/  track_instance_count; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_1__* ref; } ;
struct TYPE_20__ {int /*<<< orphan*/  instance; } ;
typedef  TYPE_2__ MXFPackage ;
typedef  TYPE_3__ MXFContext ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVIOContext ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  SourceClip ; 
 scalar_t__ SourcePackage ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(AVFormatContext *s, AVStream *st, MXFPackage *package)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int i;

    FUNC6(pb, 0x011100);
    FUNC0(s, "sturctural component key", pb->buf_ptr - 16);
    FUNC3(pb, 108);

    // write uid
    FUNC5(pb, 16, 0x3C0A);
    FUNC8(pb, SourceClip, mxf->track_instance_count);

    FUNC0(s, "structural component uid", pb->buf_ptr - 16);
    FUNC4(s, st);

    // write start_position
    FUNC5(pb, 8, 0x1201);
    FUNC2(pb, 0);

    // write source package uid, end of the reference
    FUNC5(pb, 32, 0x1101);
    if (!package->ref) {
        for (i = 0; i < 4; i++)
            FUNC2(pb, 0);
    } else
        FUNC7(s, package->ref->instance);

    // write source track id
    FUNC5(pb, 4, 0x1102);
    if (package->type == SourcePackage && !package->ref)
        FUNC1(pb, 0);
    else
        FUNC1(pb, st->index+2);
}