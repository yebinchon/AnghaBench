
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_11__ {int playlist; int duration; } ;
struct TYPE_10__ {int playlist; scalar_t__ angle; int chapter; int bd; } ;
typedef TYPE_2__ BlurayContext ;
typedef TYPE_3__ BLURAY_TITLE_INFO ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int BLURAY_PROTO_PREFIX ;
 int EIO ;
 int MIN_PLAYLIST_LENGTH ;
 int TITLES_RELEVANT ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int av_strstart (char const*,int ,char const**) ;
 int bd_free_title_info (TYPE_3__*) ;
 TYPE_3__* bd_get_title_info (int ,int,int ) ;
 int bd_get_titles (int ,int ,int ) ;
 int bd_open (char const*,int *) ;
 int bd_seek_chapter (int ,int) ;
 int bd_select_angle (int ,scalar_t__) ;
 scalar_t__ bd_select_playlist (int ,int) ;
 scalar_t__ check_disc_info (TYPE_1__*) ;

__attribute__((used)) static int bluray_open(URLContext *h, const char *path, int flags)
{
    BlurayContext *bd = h->priv_data;
    int num_title_idx;
    const char *diskname = path;

    av_strstart(path, BLURAY_PROTO_PREFIX, &diskname);

    bd->bd = bd_open(diskname, ((void*)0));
    if (!bd->bd) {
        av_log(h, AV_LOG_ERROR, "bd_open() failed\n");
        return AVERROR(EIO);
    }


    if (check_disc_info(h) < 0) {
        return AVERROR(EIO);
    }
    num_title_idx = bd_get_titles(bd->bd, TITLES_RELEVANT, MIN_PLAYLIST_LENGTH);
    av_log(h, AV_LOG_INFO, "%d usable playlists:\n", num_title_idx);
    if (num_title_idx < 1) {
        return AVERROR(EIO);
    }


    if (bd->playlist < 0) {
        uint64_t duration = 0;
        int i;
        for (i = 0; i < num_title_idx; i++) {
            BLURAY_TITLE_INFO *info = bd_get_title_info(bd->bd, i, 0);

            av_log(h, AV_LOG_INFO, "playlist %05d.mpls (%d:%02d:%02d)\n",
                   info->playlist,
                   ((int)(info->duration / 90000) / 3600),
                   ((int)(info->duration / 90000) % 3600) / 60,
                   ((int)(info->duration / 90000) % 60));

            if (info->duration > duration) {
                bd->playlist = info->playlist;
                duration = info->duration;
            }

            bd_free_title_info(info);
        }
        av_log(h, AV_LOG_INFO, "selected %05d.mpls\n", bd->playlist);
    }


    if (bd_select_playlist(bd->bd, bd->playlist) <= 0) {
        av_log(h, AV_LOG_ERROR, "bd_select_playlist(%05d.mpls) failed\n", bd->playlist);
        return AVERROR(EIO);
    }


    if (bd->angle >= 0) {
        bd_select_angle(bd->bd, bd->angle);
    }


    if (bd->chapter > 1) {
        bd_seek_chapter(bd->bd, bd->chapter - 1);
    }

    return 0;
}
