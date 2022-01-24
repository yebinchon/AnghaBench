#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ogg_stream {scalar_t__ header; scalar_t__ nb_header; scalar_t__ start_granule; int /*<<< orphan*/  lastpts; TYPE_1__* codec; int /*<<< orphan*/  private; } ;
struct ogg {int curidx; int nstreams; struct ogg_stream* streams; int /*<<< orphan*/  headers; } ;
struct TYPE_12__ {int error_recognition; TYPE_2__** streams; struct ogg* priv_data; } ;
struct TYPE_11__ {int /*<<< orphan*/  start_time; } ;
struct TYPE_10__ {scalar_t__ nb_header; } ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AV_EF_EXPLODE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ OGG_NOGRANULE_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    struct ogg *ogg = s->priv_data;
    int ret, i;

    ogg->curidx = -1;

    //linear headers seek from start
    do {
        ret = FUNC4(s, NULL, NULL, NULL, NULL);
        if (ret < 0) {
            FUNC5(s);
            return ret;
        }
    } while (!ogg->headers);
    FUNC1(s, AV_LOG_TRACE, "found headers\n");

    for (i = 0; i < ogg->nstreams; i++) {
        struct ogg_stream *os = ogg->streams + i;

        if (ogg->streams[i].header < 0) {
            FUNC1(s, AV_LOG_ERROR, "Header parsing failed for stream %d\n", i);
            ogg->streams[i].codec = NULL;
            FUNC0(&ogg->streams[i].private);
        } else if (os->codec && os->nb_header < os->codec->nb_header) {
            FUNC1(s, AV_LOG_WARNING,
                   "Headers mismatch for stream %d: "
                   "expected %d received %d.\n",
                   i, os->codec->nb_header, os->nb_header);
            if (s->error_recognition & AV_EF_EXPLODE) {
                FUNC5(s);
                return AVERROR_INVALIDDATA;
            }
        }
        if (os->start_granule != OGG_NOGRANULE_VALUE)
            os->lastpts = s->streams[i]->start_time =
                FUNC3(s, i, os->start_granule, NULL);
    }

    //linear granulepos seek from end
    ret = FUNC2(s);
    if (ret < 0) {
        FUNC5(s);
        return ret;
    }

    return 0;
}