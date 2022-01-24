#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_19__ {scalar_t__ eof_reached; } ;
struct TYPE_18__ {TYPE_1__* priv_data; } ;
struct TYPE_17__ {TYPE_12__* fc; } ;
struct TYPE_16__ {unsigned int rap_group_count; TYPE_11__* rap_group; } ;
struct TYPE_15__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_14__ {void* index; void* count; } ;
typedef  TYPE_1__ MOVStreamContext ;
typedef  TYPE_2__ MOVContext ;
typedef  int /*<<< orphan*/  MOVAtom ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_12__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_11__* FUNC4 (unsigned int,int) ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 void* FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC9(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    MOVStreamContext *sc;
    unsigned int i, entries;
    uint8_t version;
    uint32_t grouping_type;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];
    sc = st->priv_data;

    version = FUNC5(pb); /* version */
    FUNC6(pb); /* flags */
    grouping_type = FUNC8(pb);
    if (grouping_type != FUNC1( 'r','a','p',' '))
        return 0; /* only support 'rap ' grouping */
    if (version == 1)
        FUNC7(pb); /* grouping_type_parameter */

    entries = FUNC7(pb);
    if (!entries)
        return 0;
    if (sc->rap_group)
        FUNC3(c->fc, AV_LOG_WARNING, "Duplicated SBGP atom\n");
    FUNC2(sc->rap_group);
    sc->rap_group_count = 0;
    sc->rap_group = FUNC4(entries, sizeof(*sc->rap_group));
    if (!sc->rap_group)
        return FUNC0(ENOMEM);

    for (i = 0; i < entries && !pb->eof_reached; i++) {
        sc->rap_group[i].count = FUNC7(pb); /* sample_count */
        sc->rap_group[i].index = FUNC7(pb); /* group_description_index */
    }

    sc->rap_group_count = i;

    if (pb->eof_reached) {
        FUNC3(c->fc, AV_LOG_WARNING, "reached eof, corrupted SBGP atom\n");
        return AVERROR_EOF;
    }

    return 0;
}