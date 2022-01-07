
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBPrint ;


 int av_bprint_chars (int *,char const,int) ;
 scalar_t__ scanbraces (char const*) ;
 char* strchr (char const*,char const) ;

__attribute__((used)) static void handle_open_brace(AVBPrint *dst, const char **inp, int *an, int *closing_brace_missing)
{
    const char *in = *inp;

    *an += scanbraces(in);

    if (!*closing_brace_missing) {
        if ( (*an != 1 && in[1] == '\\')
            || (in[1] && strchr("CcFfoPSsYy", in[1]) && in[2] == ':')) {
            char *bracep = strchr(in+2, '}');
            if (bracep) {
                *inp = bracep;
                return;
            } else
                *closing_brace_missing = 1;
        }
    }

    av_bprint_chars(dst, *in, 1);
}
