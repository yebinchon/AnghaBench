
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_script {int opt_mix; int events; int block_tseq; int tseq; int synth; int def; } ;


 int av_freep (int *) ;

__attribute__((used)) static void free_script(struct sbg_script *s)
{
    av_freep(&s->def);
    av_freep(&s->synth);
    av_freep(&s->tseq);
    av_freep(&s->block_tseq);
    av_freep(&s->events);
    av_freep(&s->opt_mix);
}
