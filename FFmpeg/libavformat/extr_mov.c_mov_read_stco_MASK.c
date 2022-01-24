#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ eof_reached; } ;
struct TYPE_18__ {TYPE_1__* priv_data; } ;
struct TYPE_17__ {scalar_t__ type; } ;
struct TYPE_16__ {TYPE_13__* fc; } ;
struct TYPE_15__ {unsigned int chunk_count; void** chunk_offsets; } ;
struct TYPE_14__ {int nb_streams; TYPE_4__** streams; } ;
typedef  TYPE_1__ MOVStreamContext ;
typedef  TYPE_2__ MOVContext ;
typedef  TYPE_3__ MOVAtom ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_13__*,int /*<<< orphan*/ ,char*) ; 
 void** FUNC4 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 void* FUNC7 (TYPE_5__*) ; 
 void* FUNC8 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC9(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    MOVStreamContext *sc;
    unsigned int i, entries;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];
    sc = st->priv_data;

    FUNC5(pb); /* version */
    FUNC6(pb); /* flags */

    entries = FUNC7(pb);

    if (!entries)
        return 0;

    if (sc->chunk_offsets)
        FUNC3(c->fc, AV_LOG_WARNING, "Duplicated STCO atom\n");
    FUNC2(sc->chunk_offsets);
    sc->chunk_count = 0;
    sc->chunk_offsets = FUNC4(entries, sizeof(*sc->chunk_offsets));
    if (!sc->chunk_offsets)
        return FUNC0(ENOMEM);
    sc->chunk_count = entries;

    if      (atom.type == FUNC1('s','t','c','o'))
        for (i = 0; i < entries && !pb->eof_reached; i++)
            sc->chunk_offsets[i] = FUNC7(pb);
    else if (atom.type == FUNC1('c','o','6','4'))
        for (i = 0; i < entries && !pb->eof_reached; i++)
            sc->chunk_offsets[i] = FUNC8(pb);
    else
        return AVERROR_INVALIDDATA;

    sc->chunk_count = i;

    if (pb->eof_reached) {
        FUNC3(c->fc, AV_LOG_WARNING, "reached eof, corrupted STCO atom\n");
        return AVERROR_EOF;
    }

    return 0;
}