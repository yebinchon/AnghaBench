#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ eof_reached; } ;
struct TYPE_16__ {scalar_t__ need_parsing; TYPE_1__* codecpar; TYPE_2__* priv_data; } ;
struct TYPE_15__ {TYPE_11__* fc; } ;
struct TYPE_14__ {int keyframe_absent; unsigned int keyframe_count; void** keyframes; } ;
struct TYPE_13__ {scalar_t__ codec_type; } ;
struct TYPE_12__ {int nb_streams; TYPE_4__** streams; } ;
typedef  TYPE_2__ MOVStreamContext ;
typedef  TYPE_3__ MOVContext ;
typedef  int /*<<< orphan*/  MOVAtom ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ AVSTREAM_PARSE_HEADERS ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (void***) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*,int /*<<< orphan*/ ,char*,...) ; 
 void** FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 void* FUNC6 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC7(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    MOVStreamContext *sc;
    unsigned int i, entries;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];
    sc = st->priv_data;

    FUNC4(pb); /* version */
    FUNC5(pb); /* flags */

    entries = FUNC6(pb);

    FUNC2(c->fc, AV_LOG_TRACE, "keyframe_count = %u\n", entries);

    if (!entries)
    {
        sc->keyframe_absent = 1;
        if (!st->need_parsing && st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO)
            st->need_parsing = AVSTREAM_PARSE_HEADERS;
        return 0;
    }
    if (sc->keyframes)
        FUNC2(c->fc, AV_LOG_WARNING, "Duplicated STSS atom\n");
    if (entries >= UINT_MAX / sizeof(int))
        return AVERROR_INVALIDDATA;
    FUNC1(&sc->keyframes);
    sc->keyframe_count = 0;
    sc->keyframes = FUNC3(entries, sizeof(*sc->keyframes));
    if (!sc->keyframes)
        return FUNC0(ENOMEM);

    for (i = 0; i < entries && !pb->eof_reached; i++) {
        sc->keyframes[i] = FUNC6(pb);
    }

    sc->keyframe_count = i;

    if (pb->eof_reached) {
        FUNC2(c->fc, AV_LOG_WARNING, "reached eof, corrupted STSS atom\n");
        return AVERROR_EOF;
    }

    return 0;
}