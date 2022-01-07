
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_string {int dummy; } ;
struct sbg_parser {int err_msg; } ;


 int AVERROR_INVALIDDATA ;
 int lex_wsword (struct sbg_parser*,struct sbg_string*) ;
 int snprintf (int ,int,char*,char) ;

__attribute__((used)) static int parse_optarg(struct sbg_parser *p, char o, struct sbg_string *r)
{
    if (!lex_wsword(p, r)) {
        snprintf(p->err_msg, sizeof(p->err_msg),
                 "option '%c' requires an argument", o);
        return AVERROR_INVALIDDATA;
    }
    return 1;
}
