
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_4__ {char* str; } ;
typedef TYPE_1__ AVBPrint ;


 int av_bprint_finalize (TYPE_1__*,int *) ;
 int format_line (void*,int,char const*,int ,TYPE_1__*,int*,int *) ;
 int snprintf (char*,int,char*,char*,char*,char*,char*) ;

int av_log_format_line2(void *ptr, int level, const char *fmt, va_list vl,
                        char *line, int line_size, int *print_prefix)
{
    AVBPrint part[4];
    int ret;

    format_line(ptr, level, fmt, vl, part, print_prefix, ((void*)0));
    ret = snprintf(line, line_size, "%s%s%s%s", part[0].str, part[1].str, part[2].str, part[3].str);
    av_bprint_finalize(part+3, ((void*)0));
    return ret;
}
