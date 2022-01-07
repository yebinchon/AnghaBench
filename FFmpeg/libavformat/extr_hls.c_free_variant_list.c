
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct variant {struct variant** playlists; } ;
struct TYPE_3__ {int n_variants; struct variant** variants; } ;
typedef TYPE_1__ HLSContext ;


 int av_free (struct variant*) ;
 int av_freep (struct variant***) ;

__attribute__((used)) static void free_variant_list(HLSContext *c)
{
    int i;
    for (i = 0; i < c->n_variants; i++) {
        struct variant *var = c->variants[i];
        av_freep(&var->playlists);
        av_free(var);
    }
    av_freep(&c->variants);
    c->n_variants = 0;
}
