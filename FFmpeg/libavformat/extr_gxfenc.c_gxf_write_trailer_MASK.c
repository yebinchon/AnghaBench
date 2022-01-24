#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_9__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int map_offsets_nb; int /*<<< orphan*/ * map_offsets; int /*<<< orphan*/ * flt_entries; } ;
typedef  TYPE_1__ GXFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t end;
    int i;
    int ret;

    FUNC4(s);

    FUNC5(pb);
    end = FUNC3(pb);
    FUNC2(pb, 0, SEEK_SET);
    /* overwrite map, flt and umf packets with new values */
    if ((ret = FUNC7(s, 1)) < 0)
        return ret;
    FUNC6(s);
    FUNC8(s);
    FUNC1(pb);
    /* update duration in all map packets */
    for (i = 1; i < gxf->map_offsets_nb; i++) {
        FUNC2(pb, gxf->map_offsets[i], SEEK_SET);
        if ((ret = FUNC7(s, 1)) < 0)
            return ret;
        FUNC1(pb);
    }

    FUNC2(pb, end, SEEK_SET);

    FUNC0(&gxf->flt_entries);
    FUNC0(&gxf->map_offsets);

    return 0;
}