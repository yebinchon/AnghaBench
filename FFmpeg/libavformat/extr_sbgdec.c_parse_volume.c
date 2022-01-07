
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_parser {int log; } ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int ERANGE ;
 int lex_char (struct sbg_parser*,char) ;
 int lex_double (struct sbg_parser*,double*) ;
 scalar_t__ scale_double (int ,double,double,int*) ;

__attribute__((used)) static int parse_volume(struct sbg_parser *p, int *vol)
{
    double v;

    if (!lex_char(p, '/'))
        return 0;
    if (!lex_double(p, &v))
        return AVERROR_INVALIDDATA;
    if (scale_double(p->log, v, 0.01, vol))
        return AVERROR(ERANGE);
    return 1;
}
