#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ogg_stream {int header; int /*<<< orphan*/  buf; int /*<<< orphan*/  start_granule; scalar_t__ bufsize; int /*<<< orphan*/  serial; } ;
struct ogg {int nstreams; struct ogg_stream* streams; scalar_t__ state; } ;
struct TYPE_9__ {struct ogg* priv_data; } ;
struct TYPE_8__ {int id; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_BUG ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ DECODER_BUFFER_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  OGG_NOGRANULE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct ogg_stream* FUNC4 (struct ogg_stream*,size_t) ; 
 scalar_t__ FUNC5 (int,int,size_t*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ogg_stream*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s, uint32_t serial)
{
    struct ogg *ogg = s->priv_data;
    int idx         = ogg->nstreams;
    AVStream *st;
    struct ogg_stream *os;
    size_t size;

    if (ogg->state) {
        FUNC2(s, AV_LOG_ERROR, "New streams are not supposed to be added "
               "in between Ogg context save/restore operations.\n");
        return AVERROR_BUG;
    }

    /* Allocate and init a new Ogg Stream */
    if (FUNC5(ogg->nstreams + 1, sizeof(*ogg->streams), &size) < 0 ||
        !(os = FUNC4(ogg->streams, size)))
        return FUNC0(ENOMEM);
    ogg->streams = os;
    os           = ogg->streams + idx;
    FUNC8(os, 0, sizeof(*os));
    os->serial        = serial;
    os->bufsize       = DECODER_BUFFER_SIZE;
    os->buf           = FUNC3(os->bufsize + AV_INPUT_BUFFER_PADDING_SIZE);
    os->header        = -1;
    os->start_granule = OGG_NOGRANULE_VALUE;
    if (!os->buf)
        return FUNC0(ENOMEM);

    /* Create the associated AVStream */
    st = FUNC6(s, NULL);
    if (!st) {
        FUNC1(&os->buf);
        return FUNC0(ENOMEM);
    }
    st->id = idx;
    FUNC7(st, 64, 1, 1000000);

    ogg->nstreams++;
    return idx;
}