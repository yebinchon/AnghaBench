#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/  time_base; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct TYPE_11__ {int /*<<< orphan*/ * pb; TYPE_4__** chapters; } ;
struct TYPE_10__ {int member_0; int member_1; } ;
struct TYPE_9__ {int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ ID3v2EncContext ;
typedef  TYPE_2__ AVRational ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVChapter ;

/* Variables and functions */
 scalar_t__ ID3v2_HEADER_SIZE ; 
 int FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__ const) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s, ID3v2EncContext *id3, int id, int enc)
{
    const AVRational time_base = {1, 1000};
    AVChapter *ch = s->chapters[id];
    uint8_t *dyn_buf = NULL;
    AVIOContext *dyn_bc = NULL;
    char name[123];
    int len, start, end, ret;

    if ((ret = FUNC4(&dyn_bc)) < 0)
        goto fail;

    start = FUNC2(ch->start, ch->time_base, time_base);
    end   = FUNC2(ch->end,   ch->time_base, time_base);

    FUNC9(name, 122, "ch%d", id);
    id3->len += FUNC5(dyn_bc, name);
    FUNC7(dyn_bc, start);
    FUNC7(dyn_bc, end);
    FUNC7(dyn_bc, 0xFFFFFFFFu);
    FUNC7(dyn_bc, 0xFFFFFFFFu);

    if ((ret = FUNC10(dyn_bc, &ch->metadata, id3, enc)) < 0)
        goto fail;

    len = FUNC3(dyn_bc, &dyn_buf);
    id3->len += 16 + ID3v2_HEADER_SIZE;

    FUNC7(s->pb, FUNC0('C', 'H', 'A', 'P'));
    FUNC7(s->pb, len);
    FUNC6(s->pb, 0);
    FUNC8(s->pb, dyn_buf, len);

fail:
    if (dyn_bc && !dyn_buf)
        FUNC3(dyn_bc, &dyn_buf);
    FUNC1(&dyn_buf);

    return ret;
}