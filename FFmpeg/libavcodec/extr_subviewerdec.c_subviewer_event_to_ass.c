
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBPrint ;


 int av_bprint_chars (int *,char const,int) ;
 int av_bprintf (int *,char*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int subviewer_event_to_ass(AVBPrint *buf, const char *p)
{
    while (*p) {
        if (!strncmp(p, "[br]", 4)) {
            av_bprintf(buf, "\\N");
            p += 4;
        } else {
            if (p[0] == '\n' && p[1])
                av_bprintf(buf, "\\N");
            else if (*p != '\n' && *p != '\r')
                av_bprint_chars(buf, *p, 1);
            p++;
        }
    }

    return 0;
}
