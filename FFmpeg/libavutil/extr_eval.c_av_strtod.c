
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp; double bin_val; double dec_val; } ;


 double ff_exp10 (double) ;
 TYPE_1__* si_prefixes ;
 double strtod (char const*,char**) ;
 double strtoul (char const*,char**,int) ;

double av_strtod(const char *numstr, char **tail)
{
    double d;
    char *next;
    if(numstr[0]=='0' && (numstr[1]|0x20)=='x') {
        d = strtoul(numstr, &next, 16);
    } else
        d = strtod(numstr, &next);

    if (next!=numstr) {
        if (next[0] == 'd' && next[1] == 'B') {

            d = ff_exp10(d / 20);
            next += 2;
        } else if (*next >= 'E' && *next <= 'z') {
            int e= si_prefixes[*next - 'E'].exp;
            if (e) {
                if (next[1] == 'i') {
                    d*= si_prefixes[*next - 'E'].bin_val;
                    next+=2;
                } else {
                    d*= si_prefixes[*next - 'E'].dec_val;
                    next++;
                }
            }
        }

        if (*next=='B') {
            d*=8;
            next++;
        }
    }


    if (tail)
        *tail = next;
    return d;
}
