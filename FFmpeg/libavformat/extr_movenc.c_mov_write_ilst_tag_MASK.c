#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_8__ {int flags; } ;
typedef  int /*<<< orphan*/  MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int AVFMT_FLAG_BITEXACT ; 
 int /*<<< orphan*/  LIBAVFORMAT_IDENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(AVIOContext *pb, MOVMuxContext *mov,
                              AVFormatContext *s)
{
    int64_t pos = FUNC0(pb);
    FUNC1(pb, 0); /* size */
    FUNC2(pb, "ilst");
    FUNC5(s, pb, "\251nam", "title"    , 1);
    FUNC5(s, pb, "\251ART", "artist"   , 1);
    FUNC5(s, pb, "aART", "album_artist", 1);
    FUNC5(s, pb, "\251wrt", "composer" , 1);
    FUNC5(s, pb, "\251alb", "album"    , 1);
    FUNC5(s, pb, "\251day", "date"     , 1);
    if (!FUNC5(s, pb, "\251too", "encoding_tool", 1)) {
        if (!(s->flags & AVFMT_FLAG_BITEXACT))
            FUNC6(pb, "\251too", LIBAVFORMAT_IDENT, 0, 1);
    }
    FUNC5(s, pb, "\251cmt", "comment"  , 1);
    FUNC5(s, pb, "\251gen", "genre"    , 1);
    FUNC5(s, pb, "cprt",    "copyright", 1);
    FUNC5(s, pb, "\251grp", "grouping" , 1);
    FUNC5(s, pb, "\251lyr", "lyrics"   , 1);
    FUNC5(s, pb, "desc",    "description",1);
    FUNC5(s, pb, "ldes",    "synopsis" , 1);
    FUNC5(s, pb, "tvsh",    "show"     , 1);
    FUNC5(s, pb, "tven",    "episode_id",1);
    FUNC5(s, pb, "tvnn",    "network"  , 1);
    FUNC5(s, pb, "keyw",    "keywords"  , 1);
    FUNC4  (s, pb, "tves",    "episode_sort",4);
    FUNC4  (s, pb, "tvsn",    "season_number",4);
    FUNC4  (s, pb, "stik",    "media_type",1);
    FUNC4  (s, pb, "hdvd",    "hd_video",  1);
    FUNC4  (s, pb, "pgap",    "gapless_playback",1);
    FUNC4  (s, pb, "cpil",    "compilation", 1);
    FUNC3(pb, s);
    FUNC8(pb, mov, s, 0); // track number
    FUNC8(pb, mov, s, 1); // disc number
    FUNC7(pb, s);
    return FUNC9(pb, pos);
}