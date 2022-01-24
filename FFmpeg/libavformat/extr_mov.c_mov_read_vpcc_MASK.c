#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int nb_streams; TYPE_4__** streams; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {int size; } ;
struct TYPE_9__ {TYPE_7__* fc; } ;
struct TYPE_8__ {int color_primaries; int color_trc; int color_space; int /*<<< orphan*/  color_range; } ;
typedef  TYPE_2__ MOVContext ;
typedef  TYPE_3__ MOVAtom ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVCOL_PRI_UNSPECIFIED ; 
 int /*<<< orphan*/  AVCOL_RANGE_JPEG ; 
 int /*<<< orphan*/  AVCOL_RANGE_MPEG ; 
 int AVCOL_SPC_UNSPECIFIED ; 
 int AVCOL_TRC_UNSPECIFIED ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    int version, color_range, color_primaries, color_trc, color_space;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams - 1];

    if (atom.size < 5) {
        FUNC3(c->fc, AV_LOG_ERROR, "Empty VP Codec Configuration box\n");
        return AVERROR_INVALIDDATA;
    }

    version = FUNC4(pb);
    if (version != 1) {
        FUNC3(c->fc, AV_LOG_WARNING, "Unsupported VP Codec Configuration box version %d\n", version);
        return 0;
    }
    FUNC6(pb, 3); /* flags */

    FUNC6(pb, 2); /* profile + level */
    color_range     = FUNC4(pb); /* bitDepth, chromaSubsampling, videoFullRangeFlag */
    color_primaries = FUNC4(pb);
    color_trc       = FUNC4(pb);
    color_space     = FUNC4(pb);
    if (FUNC5(pb)) /* codecIntializationDataSize */
        return AVERROR_INVALIDDATA;

    if (!FUNC0(color_primaries))
        color_primaries = AVCOL_PRI_UNSPECIFIED;
    if (!FUNC2(color_trc))
        color_trc = AVCOL_TRC_UNSPECIFIED;
    if (!FUNC1(color_space))
        color_space = AVCOL_SPC_UNSPECIFIED;

    st->codecpar->color_range     = (color_range & 1) ? AVCOL_RANGE_JPEG : AVCOL_RANGE_MPEG;
    st->codecpar->color_primaries = color_primaries;
    st->codecpar->color_trc       = color_trc;
    st->codecpar->color_space     = color_space;

    return 0;
}