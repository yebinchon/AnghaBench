
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {int flags; } ;
typedef int MOVMuxContext ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int AVFMT_FLAG_BITEXACT ;
 int LIBAVFORMAT_IDENT ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int ) ;
 int ffio_wfourcc (int *,char*) ;
 int mov_write_covr (int *,TYPE_1__*) ;
 int mov_write_int8_metadata (TYPE_1__*,int *,char*,char*,int) ;
 int mov_write_string_metadata (TYPE_1__*,int *,char*,char*,int) ;
 int mov_write_string_tag (int *,char*,int ,int ,int) ;
 int mov_write_tmpo_tag (int *,TYPE_1__*) ;
 int mov_write_trkn_tag (int *,int *,TYPE_1__*,int) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_ilst_tag(AVIOContext *pb, MOVMuxContext *mov,
                              AVFormatContext *s)
{
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "ilst");
    mov_write_string_metadata(s, pb, "\251nam", "title" , 1);
    mov_write_string_metadata(s, pb, "\251ART", "artist" , 1);
    mov_write_string_metadata(s, pb, "aART", "album_artist", 1);
    mov_write_string_metadata(s, pb, "\251wrt", "composer" , 1);
    mov_write_string_metadata(s, pb, "\251alb", "album" , 1);
    mov_write_string_metadata(s, pb, "\251day", "date" , 1);
    if (!mov_write_string_metadata(s, pb, "\251too", "encoding_tool", 1)) {
        if (!(s->flags & AVFMT_FLAG_BITEXACT))
            mov_write_string_tag(pb, "\251too", LIBAVFORMAT_IDENT, 0, 1);
    }
    mov_write_string_metadata(s, pb, "\251cmt", "comment" , 1);
    mov_write_string_metadata(s, pb, "\251gen", "genre" , 1);
    mov_write_string_metadata(s, pb, "cprt", "copyright", 1);
    mov_write_string_metadata(s, pb, "\251grp", "grouping" , 1);
    mov_write_string_metadata(s, pb, "\251lyr", "lyrics" , 1);
    mov_write_string_metadata(s, pb, "desc", "description",1);
    mov_write_string_metadata(s, pb, "ldes", "synopsis" , 1);
    mov_write_string_metadata(s, pb, "tvsh", "show" , 1);
    mov_write_string_metadata(s, pb, "tven", "episode_id",1);
    mov_write_string_metadata(s, pb, "tvnn", "network" , 1);
    mov_write_string_metadata(s, pb, "keyw", "keywords" , 1);
    mov_write_int8_metadata (s, pb, "tves", "episode_sort",4);
    mov_write_int8_metadata (s, pb, "tvsn", "season_number",4);
    mov_write_int8_metadata (s, pb, "stik", "media_type",1);
    mov_write_int8_metadata (s, pb, "hdvd", "hd_video", 1);
    mov_write_int8_metadata (s, pb, "pgap", "gapless_playback",1);
    mov_write_int8_metadata (s, pb, "cpil", "compilation", 1);
    mov_write_covr(pb, s);
    mov_write_trkn_tag(pb, mov, s, 0);
    mov_write_trkn_tag(pb, mov, s, 1);
    mov_write_tmpo_tag(pb, s);
    return update_size(pb, pos);
}
