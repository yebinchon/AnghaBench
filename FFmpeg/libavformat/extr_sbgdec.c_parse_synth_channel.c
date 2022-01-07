
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbg_script_synth {int dummy; } ;
struct TYPE_2__ {int nb_synth; int synth; } ;
struct sbg_parser {TYPE_1__ scs; int nb_synth_max; } ;


 int AVERROR (int ) ;
 int ENOMEM ;
 struct sbg_script_synth* alloc_array_elem (void**,int,int *,int *) ;
 int lex_char (struct sbg_parser*,char) ;
 int parse_synth_channel_bell (struct sbg_parser*,struct sbg_script_synth*) ;
 int parse_synth_channel_mix (struct sbg_parser*,struct sbg_script_synth*) ;
 int parse_synth_channel_pink (struct sbg_parser*,struct sbg_script_synth*) ;
 int parse_synth_channel_sine (struct sbg_parser*,struct sbg_script_synth*) ;
 int parse_synth_channel_spin (struct sbg_parser*,struct sbg_script_synth*) ;

__attribute__((used)) static int parse_synth_channel(struct sbg_parser *p)
{
    int r;
    struct sbg_script_synth *synth;

    synth = alloc_array_elem((void **)&p->scs.synth, sizeof(*synth),
                             &p->scs.nb_synth, &p->nb_synth_max);
    if (!synth)
        return AVERROR(ENOMEM);
    r = lex_char(p, '-');
    if (!r)
        r = parse_synth_channel_pink(p, synth);
    if (!r)
        r = parse_synth_channel_bell(p, synth);
    if (!r)
        r = parse_synth_channel_mix(p, synth);
    if (!r)
        r = parse_synth_channel_spin(p, synth);

    if (!r)
        r = parse_synth_channel_sine(p, synth);
    if (r <= 0)
        p->scs.nb_synth--;
    return r;
}
