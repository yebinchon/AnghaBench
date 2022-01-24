#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_10__ {int timeline_start_pos; int /*<<< orphan*/  thumbnail; int /*<<< orphan*/  st_pairs; int /*<<< orphan*/  sp_pairs; } ;
typedef  TYPE_1__ WtvContext ;
struct TYPE_11__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int WTV_SECTOR_BITS ; 
 int /*<<< orphan*/  WTV_TABLE_0_ENTRIES_LEGACY_ATTRIB ; 
 int /*<<< orphan*/  WTV_TABLE_0_ENTRIES_TIME ; 
 int /*<<< orphan*/  WTV_TABLE_0_REDIRECTOR_LEGACY_ATTRIB ; 
 int /*<<< orphan*/  WTV_TIMELINE ; 
 int /*<<< orphan*/  WTV_TIMELINE_TABLE_0_ENTRIES_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s)
{
    WtvContext *wctx = s->priv_data;
    AVIOContext *pb = s->pb;
    int root_size;
    int64_t sector_pos;
    int64_t start_pos, file_end_pos;

    if (FUNC6(s, WTV_TIMELINE, wctx->timeline_start_pos) < 0)
        return -1;

    start_pos = FUNC4(pb);
    FUNC9(s);
    if (FUNC6(s, WTV_TIMELINE_TABLE_0_ENTRIES_EVENTS, start_pos) < 0)
        return -1;

    start_pos = FUNC4(pb);
    FUNC8(s);
    if (FUNC6(s, WTV_TABLE_0_ENTRIES_LEGACY_ATTRIB, start_pos) < 0)
        return -1;

    start_pos = FUNC4(pb);
    FUNC11(s);
    if (FUNC6(s, WTV_TABLE_0_REDIRECTOR_LEGACY_ATTRIB, start_pos) < 0)
        return -1;

    start_pos = FUNC4(pb);
    FUNC10(s);
    if (FUNC6(s, WTV_TABLE_0_ENTRIES_TIME, start_pos) < 0)
        return -1;

    // write root table
    sector_pos = FUNC4(pb);
    root_size = FUNC7(s, sector_pos);

    file_end_pos = FUNC4(pb);
    // update root value
    FUNC3(pb, 0x30, SEEK_SET);
    FUNC5(pb, root_size);
    FUNC3(pb, 4, SEEK_CUR);
    FUNC5(pb, sector_pos >> WTV_SECTOR_BITS);
    FUNC3(pb, 0x5c, SEEK_SET);
    FUNC5(pb, file_end_pos >> WTV_SECTOR_BITS);

    FUNC2(pb);

    FUNC0(wctx->sp_pairs);
    FUNC0(wctx->st_pairs);
    FUNC1(&wctx->thumbnail);
    return 0;
}