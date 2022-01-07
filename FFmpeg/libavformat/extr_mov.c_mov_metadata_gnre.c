
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* fc; } ;
struct TYPE_4__ {int metadata; int event_flags; } ;
typedef TYPE_2__ MOVContext ;
typedef int AVIOContext ;


 int AVFMT_EVENT_FLAG_METADATA_UPDATED ;
 short ID3v1_GENRE_MAX ;
 int av_dict_set (int *,char const*,int ,int ) ;
 short avio_r8 (int *) ;
 int * ff_id3v1_genre_str ;

__attribute__((used)) static int mov_metadata_gnre(MOVContext *c, AVIOContext *pb,
                             unsigned len, const char *key)
{
    short genre;

    avio_r8(pb);

    genre = avio_r8(pb);
    if (genre < 1 || genre > ID3v1_GENRE_MAX)
        return 0;
    c->fc->event_flags |= AVFMT_EVENT_FLAG_METADATA_UPDATED;
    av_dict_set(&c->fc->metadata, key, ff_id3v1_genre_str[genre-1], 0);

    return 0;
}
