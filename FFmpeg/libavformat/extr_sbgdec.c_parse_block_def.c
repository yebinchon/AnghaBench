
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_script_definition {char type; int elements; int nb_elements; } ;
struct sbg_parser {int nb_block_tseq; } ;


 int AVERROR_INVALIDDATA ;
 int lex_char (struct sbg_parser*,char) ;
 int lex_line_end (struct sbg_parser*) ;
 int lex_space (struct sbg_parser*) ;
 int parse_time_sequence (struct sbg_parser*,int) ;

__attribute__((used)) static int parse_block_def(struct sbg_parser *p,
                           struct sbg_script_definition *def)
{
    int r, tseq;

    lex_space(p);
    if (!lex_line_end(p))
        return AVERROR_INVALIDDATA;
    tseq = p->nb_block_tseq;
    while (1) {
        r = parse_time_sequence(p, 1);
        if (r < 0)
            return r;
        if (!r)
            break;
    }
    if (!lex_char(p, '}'))
        return AVERROR_INVALIDDATA;
    lex_space(p);
    if (!lex_line_end(p))
        return AVERROR_INVALIDDATA;
    def->type = 'B';
    def->elements = tseq;
    def->nb_elements = p->nb_block_tseq - tseq;
    if (!def->nb_elements)
        return AVERROR_INVALIDDATA;
    return 1;
}
