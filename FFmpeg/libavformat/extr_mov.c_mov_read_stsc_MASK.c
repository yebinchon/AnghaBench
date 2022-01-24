#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_21__ {scalar_t__ eof_reached; } ;
struct TYPE_20__ {TYPE_1__* priv_data; } ;
struct TYPE_19__ {int size; } ;
struct TYPE_18__ {TYPE_13__* fc; } ;
struct TYPE_17__ {unsigned int stsc_count; TYPE_12__* stsc_data; } ;
struct TYPE_16__ {int nb_streams; TYPE_4__** streams; } ;
struct TYPE_15__ {scalar_t__ first; int count; int id; } ;
typedef  TYPE_1__ MOVStreamContext ;
typedef  TYPE_2__ MOVContext ;
typedef  TYPE_3__ MOVAtom ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_MAX ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_13__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_12__* FUNC6 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 void* FUNC9 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC10(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    MOVStreamContext *sc;
    unsigned int i, entries;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];
    sc = st->priv_data;

    FUNC7(pb); /* version */
    FUNC8(pb); /* flags */

    entries = FUNC9(pb);
    if ((uint64_t)entries * 12 + 4 > atom.size)
        return AVERROR_INVALIDDATA;

    FUNC5(c->fc, AV_LOG_TRACE, "track[%u].stsc.entries = %u\n", c->fc->nb_streams - 1, entries);

    if (!entries)
        return 0;
    if (sc->stsc_data)
        FUNC5(c->fc, AV_LOG_WARNING, "Duplicated STSC atom\n");
    FUNC4(sc->stsc_data);
    sc->stsc_count = 0;
    sc->stsc_data = FUNC6(entries, sizeof(*sc->stsc_data));
    if (!sc->stsc_data)
        return FUNC0(ENOMEM);

    for (i = 0; i < entries && !pb->eof_reached; i++) {
        sc->stsc_data[i].first = FUNC9(pb);
        sc->stsc_data[i].count = FUNC9(pb);
        sc->stsc_data[i].id = FUNC9(pb);
    }

    sc->stsc_count = i;
    for (i = sc->stsc_count - 1; i < UINT_MAX; i--) {
        int64_t first_min = i + 1;
        if ((i+1 < sc->stsc_count && sc->stsc_data[i].first >= sc->stsc_data[i+1].first) ||
            (i > 0 && sc->stsc_data[i].first <= sc->stsc_data[i-1].first) ||
            sc->stsc_data[i].first < first_min ||
            sc->stsc_data[i].count < 1 ||
            sc->stsc_data[i].id < 1) {
            FUNC5(c->fc, AV_LOG_WARNING, "STSC entry %d is invalid (first=%d count=%d id=%d)\n", i, sc->stsc_data[i].first, sc->stsc_data[i].count, sc->stsc_data[i].id);
            if (i+1 >= sc->stsc_count) {
                sc->stsc_data[i].first = FUNC1(sc->stsc_data[i].first, first_min);
                if (i > 0 && sc->stsc_data[i].first <= sc->stsc_data[i-1].first)
                    sc->stsc_data[i].first = FUNC2(sc->stsc_data[i-1].first + 1LL, INT_MAX);
                sc->stsc_data[i].count = FUNC1(sc->stsc_data[i].count, 1);
                sc->stsc_data[i].id    = FUNC1(sc->stsc_data[i].id, 1);
                continue;
            }
            FUNC3(sc->stsc_data[i+1].first >= 2);
            // We replace this entry by the next valid
            sc->stsc_data[i].first = sc->stsc_data[i+1].first - 1;
            sc->stsc_data[i].count = sc->stsc_data[i+1].count;
            sc->stsc_data[i].id    = sc->stsc_data[i+1].id;
        }
    }

    if (pb->eof_reached) {
        FUNC5(c->fc, AV_LOG_WARNING, "reached eof, corrupted STSC atom\n");
        return AVERROR_EOF;
    }

    return 0;
}