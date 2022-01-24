#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int int64_t ;
struct TYPE_20__ {scalar_t__ eof_reached; } ;
struct TYPE_19__ {int nb_frames; void* duration; TYPE_2__* priv_data; } ;
struct TYPE_18__ {TYPE_11__* fc; } ;
struct TYPE_17__ {unsigned int stts_count; int duration_for_fps; int nb_frames_for_fps; int track_end; TYPE_1__* stts_data; } ;
struct TYPE_16__ {unsigned int count; int duration; } ;
struct TYPE_15__ {int nb_streams; TYPE_4__** streams; } ;
typedef  TYPE_1__ MOVStts ;
typedef  TYPE_2__ MOVStreamContext ;
typedef  TYPE_3__ MOVContext ;
typedef  int /*<<< orphan*/  MOVAtom ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (unsigned int,int) ; 
 void* FUNC2 (void*,int) ; 
 int INT64_MAX ; 
 int INT_MAX ; 
 TYPE_1__* FUNC3 (TYPE_1__*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 void* FUNC8 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC9(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    MOVStreamContext *sc;
    unsigned int i, entries, alloc_size = 0;
    int64_t duration=0;
    int64_t total_sample_count=0;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];
    sc = st->priv_data;

    FUNC6(pb); /* version */
    FUNC7(pb); /* flags */
    entries = FUNC8(pb);

    FUNC5(c->fc, AV_LOG_TRACE, "track[%u].stts.entries = %u\n",
            c->fc->nb_streams-1, entries);

    if (sc->stts_data)
        FUNC5(c->fc, AV_LOG_WARNING, "Duplicated STTS atom\n");
    FUNC4(&sc->stts_data);
    sc->stts_count = 0;
    if (entries >= INT_MAX / sizeof(*sc->stts_data))
        return FUNC0(ENOMEM);

    for (i = 0; i < entries && !pb->eof_reached; i++) {
        int sample_duration;
        unsigned int sample_count;
        unsigned int min_entries = FUNC2(FUNC1(i + 1, 1024 * 1024), entries);
        MOVStts *stts_data = FUNC3(sc->stts_data, &alloc_size,
                                             min_entries * sizeof(*sc->stts_data));
        if (!stts_data) {
            FUNC4(&sc->stts_data);
            sc->stts_count = 0;
            return FUNC0(ENOMEM);
        }
        sc->stts_count = min_entries;
        sc->stts_data = stts_data;

        sample_count=FUNC8(pb);
        sample_duration = FUNC8(pb);

        sc->stts_data[i].count= sample_count;
        sc->stts_data[i].duration= sample_duration;

        FUNC5(c->fc, AV_LOG_TRACE, "sample_count=%d, sample_duration=%d\n",
                sample_count, sample_duration);

        duration+=(int64_t)sample_duration*(uint64_t)sample_count;
        total_sample_count+=sample_count;
    }

    sc->stts_count = i;

    if (duration > 0 &&
        duration <= INT64_MAX - sc->duration_for_fps &&
        total_sample_count <= INT_MAX - sc->nb_frames_for_fps
    ) {
        sc->duration_for_fps  += duration;
        sc->nb_frames_for_fps += total_sample_count;
    }

    if (pb->eof_reached) {
        FUNC5(c->fc, AV_LOG_WARNING, "reached eof, corrupted STTS atom\n");
        return AVERROR_EOF;
    }

    st->nb_frames= total_sample_count;
    if (duration)
        st->duration= FUNC2(st->duration, duration);
    sc->track_end = duration;
    return 0;
}