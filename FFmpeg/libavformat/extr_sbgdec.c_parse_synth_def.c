
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbg_script_definition {char type; int elements; int nb_elements; } ;
struct TYPE_2__ {int nb_synth; } ;
struct sbg_parser {TYPE_1__ scs; } ;


 int AVERROR_INVALIDDATA ;
 int lex_line_end (struct sbg_parser*) ;
 int lex_space (struct sbg_parser*) ;
 int parse_synth_channel (struct sbg_parser*) ;

__attribute__((used)) static int parse_synth_def(struct sbg_parser *p,
                           struct sbg_script_definition *def)
{
    int r, synth;

    synth = p->scs.nb_synth;
    while (1) {
        r = parse_synth_channel(p);
        if (r < 0)
            return r;
        if (!r || !lex_space(p))
            break;
    }
    lex_space(p);
    if (synth == p->scs.nb_synth)
        return AVERROR_INVALIDDATA;
    if (!lex_line_end(p))
        return AVERROR_INVALIDDATA;
    def->type = 'S';
    def->elements = synth;
    def->nb_elements = p->scs.nb_synth - synth;
    return 1;
}
