
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct variant_info {int subtitles; int video; int audio; int bandwidth; } ;
struct variant {int n_playlists; int playlists; int subtitles_group; int video_group; int audio_group; int bandwidth; } ;
struct playlist {int n_playlists; int playlists; int subtitles_group; int video_group; int audio_group; int bandwidth; } ;
struct TYPE_4__ {int n_variants; int variants; } ;
typedef TYPE_1__ HLSContext ;


 int atoi (int ) ;
 struct variant* av_mallocz (int) ;
 int dynarray_add (int *,int *,struct variant*) ;
 struct variant* new_playlist (TYPE_1__*,char const*,char const*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static struct variant *new_variant(HLSContext *c, struct variant_info *info,
                                   const char *url, const char *base)
{
    struct variant *var;
    struct playlist *pls;

    pls = new_playlist(c, url, base);
    if (!pls)
        return ((void*)0);

    var = av_mallocz(sizeof(struct variant));
    if (!var)
        return ((void*)0);

    if (info) {
        var->bandwidth = atoi(info->bandwidth);
        strcpy(var->audio_group, info->audio);
        strcpy(var->video_group, info->video);
        strcpy(var->subtitles_group, info->subtitles);
    }

    dynarray_add(&c->variants, &c->n_variants, var);
    dynarray_add(&var->playlists, &var->n_playlists, pls);
    return var;
}
