
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct representation {int dummy; } ;
struct TYPE_3__ {int n_audios; struct representation** audios; } ;
typedef TYPE_1__ DASHContext ;


 int av_freep (struct representation***) ;
 int free_representation (struct representation*) ;

__attribute__((used)) static void free_audio_list(DASHContext *c)
{
    int i;
    for (i = 0; i < c->n_audios; i++) {
        struct representation *pls = c->audios[i];
        free_representation(pls);
    }
    av_freep(&c->audios);
    c->n_audios = 0;
}
