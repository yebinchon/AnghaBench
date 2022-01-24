#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  str; } ;
struct TYPE_19__ {int /*<<< orphan*/ * metadata; } ;
struct TYPE_18__ {int nb_chapters; TYPE_2__** chapters; int /*<<< orphan*/  duration; scalar_t__ start_time; int /*<<< orphan*/  pb; int /*<<< orphan*/ * metadata; } ;
struct TYPE_17__ {int /*<<< orphan*/ * metadata; TYPE_1__* codecpar; } ;
struct TYPE_16__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  end; } ;
struct TYPE_15__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_5__ AVChapter ;
typedef  TYPE_6__ AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_DATA ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_CODEC_ID_FFMETADATA ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ID_CHAPTER ; 
 int /*<<< orphan*/  ID_STREAM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s)
{
    AVDictionary **m = &s->metadata;
    AVBPrint bp;

    FUNC2(&bp, 0, AV_BPRINT_SIZE_UNLIMITED);

    while(!FUNC5(s->pb)) {
        FUNC6(s->pb, &bp);

        if (!FUNC7(bp.str, ID_STREAM, FUNC10(ID_STREAM))) {
            AVStream *st = FUNC4(s, NULL);

            if (!st)
                return FUNC0(ENOMEM);

            st->codecpar->codec_type = AVMEDIA_TYPE_DATA;
            st->codecpar->codec_id   = AV_CODEC_ID_FFMETADATA;

            m = &st->metadata;
        } else if (!FUNC7(bp.str, ID_CHAPTER, FUNC10(ID_CHAPTER))) {
            AVChapter *ch = FUNC8(s);

            if (!ch)
                return FUNC0(ENOMEM);

            m = &ch->metadata;
        } else
            FUNC9(bp.str, m);
    }

    FUNC1(&bp, NULL);

    s->start_time = 0;
    if (s->nb_chapters)
        s->duration = FUNC3(s->chapters[s->nb_chapters - 1]->end,
                                   s->chapters[s->nb_chapters - 1]->time_base,
                                   AV_TIME_BASE_Q);

    return 0;
}