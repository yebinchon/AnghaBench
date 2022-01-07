
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct variant {TYPE_2__** playlists; int n_playlists; } ;
struct rendition {int type; struct rendition* playlist; int group_id; } ;
typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_5__ {int n_renditions; struct TYPE_5__** renditions; } ;
struct TYPE_4__ {int n_renditions; struct rendition** renditions; } ;
typedef TYPE_1__ HLSContext ;


 int dynarray_add (TYPE_2__***,int *,struct rendition*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static void add_renditions_to_variant(HLSContext *c, struct variant *var,
                                      enum AVMediaType type, const char *group_id)
{
    int i;

    for (i = 0; i < c->n_renditions; i++) {
        struct rendition *rend = c->renditions[i];

        if (rend->type == type && !strcmp(rend->group_id, group_id)) {

            if (rend->playlist)


                dynarray_add(&var->playlists, &var->n_playlists, rend->playlist);
            else


                dynarray_add(&var->playlists[0]->renditions,
                             &var->playlists[0]->n_renditions,
                             rend);
        }
    }
}
