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
struct TYPE_15__ {unsigned int sample_size; unsigned int stsz_sample_size; unsigned int sample_count; unsigned char* sample_sizes; int /*<<< orphan*/  data_size; } ;
struct TYPE_14__ {int nb_streams; TYPE_4__** streams; } ;
typedef  TYPE_1__ MOVStreamContext ;
typedef  TYPE_2__ MOVContext ;
typedef  TYPE_3__ MOVAtom ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (char,char,char,char) ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_13__*,int /*<<< orphan*/ ,char*,...) ; 
 unsigned char* FUNC5 (scalar_t__) ; 
 unsigned char* FUNC6 (unsigned int,int) ; 
 unsigned int FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 unsigned int FUNC9 (TYPE_5__*) ; 
 int FUNC10 (TYPE_5__*,unsigned char*,unsigned int) ; 
 unsigned char FUNC11 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned char*,int) ; 

__attribute__((used)) static int FUNC13(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    MOVStreamContext *sc;
    unsigned int i, entries, sample_size, field_size, num_bytes;
    GetBitContext gb;
    unsigned char* buf;
    int ret;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];
    sc = st->priv_data;

    FUNC7(pb); /* version */
    FUNC8(pb); /* flags */

    if (atom.type == FUNC1('s','t','s','z')) {
        sample_size = FUNC9(pb);
        if (!sc->sample_size) /* do not overwrite value computed in stsd */
            sc->sample_size = sample_size;
        sc->stsz_sample_size = sample_size;
        field_size = 32;
    } else {
        sample_size = 0;
        FUNC8(pb); /* reserved */
        field_size = FUNC7(pb);
    }
    entries = FUNC9(pb);

    FUNC4(c->fc, AV_LOG_TRACE, "sample_size = %u sample_count = %u\n", sc->sample_size, entries);

    sc->sample_count = entries;
    if (sample_size)
        return 0;

    if (field_size != 4 && field_size != 8 && field_size != 16 && field_size != 32) {
        FUNC4(c->fc, AV_LOG_ERROR, "Invalid sample field size %u\n", field_size);
        return AVERROR_INVALIDDATA;
    }

    if (!entries)
        return 0;
    if (entries >= (UINT_MAX - 4) / field_size)
        return AVERROR_INVALIDDATA;
    if (sc->sample_sizes)
        FUNC4(c->fc, AV_LOG_WARNING, "Duplicated STSZ atom\n");
    FUNC2(sc->sample_sizes);
    sc->sample_count = 0;
    sc->sample_sizes = FUNC6(entries, sizeof(*sc->sample_sizes));
    if (!sc->sample_sizes)
        return FUNC0(ENOMEM);

    num_bytes = (entries*field_size+4)>>3;

    buf = FUNC5(num_bytes+AV_INPUT_BUFFER_PADDING_SIZE);
    if (!buf) {
        FUNC3(&sc->sample_sizes);
        return FUNC0(ENOMEM);
    }

    ret = FUNC10(pb, buf, num_bytes);
    if (ret < 0) {
        FUNC3(&sc->sample_sizes);
        FUNC2(buf);
        FUNC4(c->fc, AV_LOG_WARNING, "STSZ atom truncated\n");
        return 0;
    }

    FUNC12(&gb, buf, 8*num_bytes);

    for (i = 0; i < entries && !pb->eof_reached; i++) {
        sc->sample_sizes[i] = FUNC11(&gb, field_size);
        sc->data_size += sc->sample_sizes[i];
    }

    sc->sample_count = i;

    FUNC2(buf);

    if (pb->eof_reached) {
        FUNC4(c->fc, AV_LOG_WARNING, "reached eof, corrupted STSZ atom\n");
        return AVERROR_EOF;
    }

    return 0;
}