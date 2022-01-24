#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_8__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int map_offsets_nb; int /*<<< orphan*/ * map_offsets; } ;
typedef  TYPE_1__ GXFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  PKT_MAP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ **,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s, int rewrite)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t pos = FUNC2(pb);

    if (!rewrite) {
        if (!(gxf->map_offsets_nb % 30)) {
            int err;
            if ((err = FUNC1(&gxf->map_offsets,
                                         gxf->map_offsets_nb + 30,
                                         sizeof(*gxf->map_offsets))) < 0) {
                gxf->map_offsets_nb = 0;
                FUNC0(s, AV_LOG_ERROR, "could not realloc map offsets\n");
                return err;
            }
        }
        gxf->map_offsets[gxf->map_offsets_nb++] = pos; // do not increment here
    }

    FUNC5(pb, PKT_MAP);

    /* preamble */
    FUNC3(pb, 0xE0); /* version */
    FUNC3(pb, 0xFF); /* reserved */

    FUNC4(s);
    FUNC6(s);

    return FUNC7(pb, pos);
}