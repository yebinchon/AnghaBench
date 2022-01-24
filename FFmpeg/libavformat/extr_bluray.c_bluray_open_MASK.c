#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_11__ {int playlist; int duration; } ;
struct TYPE_10__ {int playlist; scalar_t__ angle; int chapter; int /*<<< orphan*/  bd; } ;
typedef  TYPE_2__ BlurayContext ;
typedef  TYPE_3__ BLURAY_TITLE_INFO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  BLURAY_PROTO_PREFIX ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  MIN_PLAYLIST_LENGTH ; 
 int /*<<< orphan*/  TITLES_RELEVANT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(URLContext *h, const char *path, int flags)
{
    BlurayContext *bd = h->priv_data;
    int num_title_idx;
    const char *diskname = path;

    FUNC2(path, BLURAY_PROTO_PREFIX, &diskname);

    bd->bd = FUNC6(diskname, NULL);
    if (!bd->bd) {
        FUNC1(h, AV_LOG_ERROR, "bd_open() failed\n");
        return FUNC0(EIO);
    }

    /* check if disc can be played */
    if (FUNC10(h) < 0) {
        return FUNC0(EIO);
    }

    /* setup player registers */
    /* region code has no effect without menus
    if (bd->region > 0 && bd->region < 5) {
        av_log(h, AV_LOG_INFO, "setting region code to %d (%c)\n", bd->region, 'A' + (bd->region - 1));
        bd_set_player_setting(bd->bd, BLURAY_PLAYER_SETTING_REGION_CODE, bd->region);
    }
    */

    /* load title list */
    num_title_idx = FUNC5(bd->bd, TITLES_RELEVANT, MIN_PLAYLIST_LENGTH);
    FUNC1(h, AV_LOG_INFO, "%d usable playlists:\n", num_title_idx);
    if (num_title_idx < 1) {
        return FUNC0(EIO);
    }

    /* if playlist was not given, select longest playlist */
    if (bd->playlist < 0) {
        uint64_t duration = 0;
        int i;
        for (i = 0; i < num_title_idx; i++) {
            BLURAY_TITLE_INFO *info = FUNC4(bd->bd, i, 0);

            FUNC1(h, AV_LOG_INFO, "playlist %05d.mpls (%d:%02d:%02d)\n",
                   info->playlist,
                   ((int)(info->duration / 90000) / 3600),
                   ((int)(info->duration / 90000) % 3600) / 60,
                   ((int)(info->duration / 90000) % 60));

            if (info->duration > duration) {
                bd->playlist = info->playlist;
                duration = info->duration;
            }

            FUNC3(info);
        }
        FUNC1(h, AV_LOG_INFO, "selected %05d.mpls\n", bd->playlist);
    }

    /* select playlist */
    if (FUNC9(bd->bd, bd->playlist) <= 0) {
        FUNC1(h, AV_LOG_ERROR, "bd_select_playlist(%05d.mpls) failed\n", bd->playlist);
        return FUNC0(EIO);
    }

    /* select angle */
    if (bd->angle >= 0) {
        FUNC8(bd->bd, bd->angle);
    }

    /* select chapter */
    if (bd->chapter > 1) {
        FUNC7(bd->bd, bd->chapter - 1);
    }

    return 0;
}