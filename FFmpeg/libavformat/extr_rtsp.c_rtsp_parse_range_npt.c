
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int buf ;


 int AV_LOG_DEBUG ;
 int AV_NOPTS_VALUE ;
 int SPACE_CHARS ;
 int av_log (int *,int ,char*,char*) ;
 scalar_t__ av_parse_time (int *,char*,int) ;
 int av_stristart (char const*,char*,char const**) ;
 int get_word_sep (char*,int,char*,char const**) ;
 int strspn (char const*,int ) ;

__attribute__((used)) static void rtsp_parse_range_npt(const char *p, int64_t *start, int64_t *end)
{
    char buf[256];

    p += strspn(p, SPACE_CHARS);
    if (!av_stristart(p, "npt=", &p))
        return;

    *start = AV_NOPTS_VALUE;
    *end = AV_NOPTS_VALUE;

    get_word_sep(buf, sizeof(buf), "-", &p);
    if (av_parse_time(start, buf, 1) < 0)
        return;
    if (*p == '-') {
        p++;
        get_word_sep(buf, sizeof(buf), "-", &p);
        if (av_parse_time(end, buf, 1) < 0)
            av_log(((void*)0), AV_LOG_DEBUG, "Failed to parse interval end specification '%s'\n", buf);
    }
}
