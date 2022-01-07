
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_parser {int dummy; } ;
struct sbg_fade {void* out; void* in; int member_0; } ;


 int AVERROR_INVALIDDATA ;
 void* SBG_FADE_ADAPT ;
 void* SBG_FADE_SAME ;
 void* SBG_FADE_SILENCE ;
 scalar_t__ lex_char (struct sbg_parser*,char) ;

__attribute__((used)) static int parse_fade(struct sbg_parser *p, struct sbg_fade *fr)
{
    struct sbg_fade f = {0};

    if (lex_char(p, '<'))
        f.in = SBG_FADE_SILENCE;
    else if (lex_char(p, '-'))
        f.in = SBG_FADE_SAME;
    else if (lex_char(p, '='))
        f.in = SBG_FADE_ADAPT;
    else
        return 0;
    if (lex_char(p, '>'))
        f.out = SBG_FADE_SILENCE;
    else if (lex_char(p, '-'))
        f.out = SBG_FADE_SAME;
    else if (lex_char(p, '='))
        f.out = SBG_FADE_ADAPT;
    else
        return AVERROR_INVALIDDATA;
    *fr = f;
    return 1;
}
