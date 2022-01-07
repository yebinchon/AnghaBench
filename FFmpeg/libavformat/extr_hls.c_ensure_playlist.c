
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct playlist {int dummy; } ;
struct TYPE_4__ {int n_playlists; struct playlist** playlists; } ;
typedef TYPE_1__ HLSContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int new_variant (TYPE_1__*,int *,char const*,int *) ;

__attribute__((used)) static int ensure_playlist(HLSContext *c, struct playlist **pls, const char *url)
{
    if (*pls)
        return 0;
    if (!new_variant(c, ((void*)0), url, ((void*)0)))
        return AVERROR(ENOMEM);
    *pls = c->playlists[c->n_playlists - 1];
    return 0;
}
