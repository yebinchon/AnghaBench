
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct representation {int dummy; } ;
struct TYPE_3__ {int n_subtitles; struct representation** subtitles; } ;
typedef TYPE_1__ DASHContext ;


 int av_freep (struct representation***) ;
 int free_representation (struct representation*) ;

__attribute__((used)) static void free_subtitle_list(DASHContext *c)
{
    int i;
    for (i = 0; i < c->n_subtitles; i++) {
        struct representation *pls = c->subtitles[i];
        free_representation(pls);
    }
    av_freep(&c->subtitles);
    c->n_subtitles = 0;
}
