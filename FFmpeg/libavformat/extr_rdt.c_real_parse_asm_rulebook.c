
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVStream ;
typedef int AVFormatContext ;


 int * add_dstream (int *,int *) ;
 int real_parse_asm_rule (int *,char const*,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void
real_parse_asm_rulebook(AVFormatContext *s, AVStream *orig_st,
                        const char *p)
{
    const char *end;
    int n_rules = 0, odd = 0;
    AVStream *st;
    if (*p == '\"') p++;
    while (1) {
        if (!(end = strchr(p, ';')))
            break;
        if (!odd && end != p) {
            if (n_rules > 0)
                st = add_dstream(s, orig_st);
            else
                st = orig_st;
            if (!st)
                break;
            real_parse_asm_rule(st, p, end);
            n_rules++;
        }
        p = end + 1;
        odd ^= 1;
    }
}
