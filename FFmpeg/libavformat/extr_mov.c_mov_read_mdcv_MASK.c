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
struct TYPE_13__ {int has_luminance; int has_primaries; void* min_luminance; void* max_luminance; void** white_point; void*** display_primaries; } ;
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
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int const) ; 
 TYPE_7__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    MOVStreamContext *sc;
    const int mapping[3] = {1, 2, 0};
    const int chroma_den = 50000;
    const int luma_den = 10000;
    int i;

    if (c->fc->nb_streams < 1)
        return AVERROR_INVALIDDATA;

    sc = c->fc->streams[c->fc->nb_streams - 1]->priv_data;

    if (atom.size < 24) {
        FUNC1(c->fc, AV_LOG_ERROR, "Invalid Mastering Display Color Volume box\n");
        return AVERROR_INVALIDDATA;
    }

    sc->mastering = FUNC3();
    if (!sc->mastering)
        return FUNC0(ENOMEM);

    for (i = 0; i < 3; i++) {
        const int j = mapping[i];
        sc->mastering->display_primaries[j][0] = FUNC2(FUNC4(pb), chroma_den);
        sc->mastering->display_primaries[j][1] = FUNC2(FUNC4(pb), chroma_den);
    }
    sc->mastering->white_point[0] = FUNC2(FUNC4(pb), chroma_den);
    sc->mastering->white_point[1] = FUNC2(FUNC4(pb), chroma_den);

    sc->mastering->max_luminance = FUNC2(FUNC5(pb), luma_den);
    sc->mastering->min_luminance = FUNC2(FUNC5(pb), luma_den);

    sc->mastering->has_luminance = 1;
    sc->mastering->has_primaries = 1;

    return 0;
}