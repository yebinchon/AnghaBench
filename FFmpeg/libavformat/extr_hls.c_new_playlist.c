
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct playlist {int is_id3_timestamped; void* id3_mpegts_timestamp; void* seek_timestamp; int url; int pkt; } ;
struct TYPE_3__ {int n_playlists; int playlists; } ;
typedef TYPE_1__ HLSContext ;


 void* AV_NOPTS_VALUE ;
 struct playlist* av_mallocz (int) ;
 int dynarray_add (int *,int *,struct playlist*) ;
 int ff_make_absolute_url (int ,int,char const*,char const*) ;
 int reset_packet (int *) ;

__attribute__((used)) static struct playlist *new_playlist(HLSContext *c, const char *url,
                                     const char *base)
{
    struct playlist *pls = av_mallocz(sizeof(struct playlist));
    if (!pls)
        return ((void*)0);
    reset_packet(&pls->pkt);
    ff_make_absolute_url(pls->url, sizeof(pls->url), base, url);
    pls->seek_timestamp = AV_NOPTS_VALUE;

    pls->is_id3_timestamped = -1;
    pls->id3_mpegts_timestamp = AV_NOPTS_VALUE;

    dynarray_add(&c->playlists, &c->n_playlists, pls);
    return pls;
}
