#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ogg_stream {int bufpos; scalar_t__ new_metadata_size; int /*<<< orphan*/ * new_metadata; TYPE_4__* buf; scalar_t__ bufsize; } ;
struct ogg_state {int nstreams; TYPE_4__* streams; struct ogg_state* next; int /*<<< orphan*/  curidx; int /*<<< orphan*/  pos; } ;
struct ogg {int nstreams; struct ogg_state* state; struct ogg_stream* streams; int /*<<< orphan*/  curidx; } ;
struct TYPE_7__ {struct ogg_stream* buf; } ;
struct TYPE_6__ {int /*<<< orphan*/  pb; struct ogg* priv_data; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct ogg_state* FUNC1 (int) ; 
 TYPE_4__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct ogg_stream*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_state *ost =
        FUNC1(sizeof(*ost) + (ogg->nstreams - 1) * sizeof(*ogg->streams));
    int i;
    int ret = 0;

    if (!ost)
        return FUNC0(ENOMEM);

    ost->pos      = FUNC3(s->pb);
    ost->curidx   = ogg->curidx;
    ost->next     = ogg->state;
    ost->nstreams = ogg->nstreams;
    FUNC4(ost->streams, ogg->streams, ogg->nstreams * sizeof(*ogg->streams));

    for (i = 0; i < ogg->nstreams; i++) {
        struct ogg_stream *os = ogg->streams + i;
        os->buf = FUNC2(os->bufsize + AV_INPUT_BUFFER_PADDING_SIZE);
        if (os->buf)
            FUNC4(os->buf, ost->streams[i].buf, os->bufpos);
        else
            ret = FUNC0(ENOMEM);
        os->new_metadata      = NULL;
        os->new_metadata_size = 0;
    }

    ogg->state = ost;

    if (ret < 0)
        FUNC5(s);

    return ret;
}