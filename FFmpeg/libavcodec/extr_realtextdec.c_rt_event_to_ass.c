
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBPrint ;


 int av_bprint_chars (int *,char const,int) ;
 int av_bprintf (int *,char*) ;
 int av_isspace (char const) ;
 int av_strncasecmp (char const*,char*,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int rt_event_to_ass(AVBPrint *buf, const char *p)
{
    int prev_chr_is_space = 1;

    while (*p) {
        if (*p != '<') {
            if (!av_isspace(*p))
                av_bprint_chars(buf, *p, 1);
            else if (!prev_chr_is_space)
                av_bprint_chars(buf, ' ', 1);
            prev_chr_is_space = av_isspace(*p);
        } else {
            const char *end = strchr(p, '>');
            if (!end)
                break;
            if (!av_strncasecmp(p, "<br/>", 5) ||
                !av_strncasecmp(p, "<br>", 4)) {
                av_bprintf(buf, "\\N");
            }
            p = end;
        }
        p++;
    }
    return 0;
}
