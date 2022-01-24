#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_10__ {int /*<<< orphan*/  pb; } ;
struct TYPE_9__ {int /*<<< orphan*/  metadata; TYPE_1__* index_entries; int /*<<< orphan*/  nb_index_entries; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  pb; } ;
struct TYPE_7__ {int /*<<< orphan*/  pos; } ;
typedef  TYPE_2__ MOVStreamContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int AV_TIMECODE_STR_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,int,int,char,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, AVStream *st)
{
    MOVStreamContext *sc = st->priv_data;
    char buf[AV_TIMECODE_STR_SIZE];
    int64_t cur_pos = FUNC4(sc->pb);
    int hh, mm, ss, ff, drop;

    if (!st->nb_index_entries)
        return -1;

    FUNC2(sc->pb, st->index_entries->pos, SEEK_SET);
    FUNC3(s->pb, 13);
    hh = FUNC1(s->pb);
    mm = FUNC1(s->pb);
    ss = FUNC1(s->pb);
    drop = FUNC1(s->pb);
    ff = FUNC1(s->pb);
    FUNC5(buf, AV_TIMECODE_STR_SIZE, "%02d:%02d:%02d%c%02d",
             hh, mm, ss, drop ? ';' : ':', ff);
    FUNC0(&st->metadata, "timecode", buf, 0);

    FUNC2(sc->pb, cur_pos, SEEK_SET);
    return 0;
}