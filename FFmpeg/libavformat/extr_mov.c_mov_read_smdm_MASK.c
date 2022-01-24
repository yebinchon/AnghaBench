#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_13__ {int has_primaries; int has_luminance; void* min_luminance; void* max_luminance; void** white_point; void*** display_primaries; } ;
struct TYPE_12__ {int size; } ;
struct TYPE_11__ {TYPE_8__* fc; } ;
struct TYPE_10__ {TYPE_7__* mastering; } ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
typedef  TYPE_2__ MOVStreamContext ;
typedef  TYPE_3__ MOVContext ;
typedef  TYPE_4__ MOVAtom ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_7__* FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    MOVStreamContext *sc;
    int i, version;

    if (c->fc->nb_streams < 1)
        return AVERROR_INVALIDDATA;

    sc = c->fc->streams[c->fc->nb_streams - 1]->priv_data;

    if (atom.size < 5) {
        FUNC1(c->fc, AV_LOG_ERROR, "Empty Mastering Display Metadata box\n");
        return AVERROR_INVALIDDATA;
    }

    version = FUNC4(pb);
    if (version) {
        FUNC1(c->fc, AV_LOG_WARNING, "Unsupported Mastering Display Metadata box version %d\n", version);
        return 0;
    }
    FUNC7(pb, 3); /* flags */

    sc->mastering = FUNC3();
    if (!sc->mastering)
        return FUNC0(ENOMEM);

    for (i = 0; i < 3; i++) {
        sc->mastering->display_primaries[i][0] = FUNC2(FUNC5(pb), 1 << 16);
        sc->mastering->display_primaries[i][1] = FUNC2(FUNC5(pb), 1 << 16);
    }
    sc->mastering->white_point[0] = FUNC2(FUNC5(pb), 1 << 16);
    sc->mastering->white_point[1] = FUNC2(FUNC5(pb), 1 << 16);

    sc->mastering->max_luminance = FUNC2(FUNC6(pb), 1 << 8);
    sc->mastering->min_luminance = FUNC2(FUNC6(pb), 1 << 14);

    sc->mastering->has_primaries = 1;
    sc->mastering->has_luminance = 1;

    return 0;
}