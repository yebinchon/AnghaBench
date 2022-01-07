
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBPrint ;


 int av_bprint_chars (int *,char const,int) ;
 int av_bprintf (int *,char*,...) ;
 scalar_t__ strchr (char const*,char const) ;

void ff_ass_bprint_text_event(AVBPrint *buf, const char *p, int size,
                             const char *linebreaks, int keep_ass_markup)
{
    const char *p_end = p + size;

    for (; p < p_end && *p; p++) {


        if (linebreaks && strchr(linebreaks, *p)) {
            av_bprintf(buf, "\\N");



        } else if (!keep_ass_markup && strchr("{}\\", *p)) {
            av_bprintf(buf, "\\%c", *p);







        } else if (p[0] == '\n') {

            if (p < p_end - 1)
                av_bprintf(buf, "\\N");
        } else if (p[0] == '\r' && p < p_end - 1 && p[1] == '\n') {


            continue;


        } else {
            av_bprint_chars(buf, *p, 1);
        }
    }
}
