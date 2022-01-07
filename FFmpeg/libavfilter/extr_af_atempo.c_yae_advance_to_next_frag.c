
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_9__ {double tempo; int window; int nfrag; } ;
struct TYPE_8__ {scalar_t__ nsamples; scalar_t__* position; } ;
typedef TYPE_1__ AudioFragment ;
typedef TYPE_2__ ATempoContext ;


 TYPE_1__* yae_curr_frag (TYPE_2__*) ;
 TYPE_1__* yae_prev_frag (TYPE_2__*) ;

__attribute__((used)) static void yae_advance_to_next_frag(ATempoContext *atempo)
{
    const double fragment_step = atempo->tempo * (double)(atempo->window / 2);

    const AudioFragment *prev;
    AudioFragment *frag;

    atempo->nfrag++;
    prev = yae_prev_frag(atempo);
    frag = yae_curr_frag(atempo);

    frag->position[0] = prev->position[0] + (int64_t)fragment_step;
    frag->position[1] = prev->position[1] + atempo->window / 2;
    frag->nsamples = 0;
}
