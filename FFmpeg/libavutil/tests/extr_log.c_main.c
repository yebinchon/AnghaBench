
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_DEBUG ;
 int AV_LOG_FATAL ;
 int AV_LOG_INFO ;
 int AV_LOG_PANIC ;
 int AV_LOG_QUIET ;
 int av_log (int *,int,char*,...) ;
 int av_log_set_level (int) ;
 int call_log_format_line2 (char*,char*,int) ;
 int printf (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int use_color ;

int main(int argc, char **argv)
{
    int i;
    av_log_set_level(AV_LOG_DEBUG);
    for (use_color=0; use_color<=256; use_color = 255*use_color+1) {
        av_log(((void*)0), AV_LOG_FATAL, "use_color: %d\n", use_color);
        for (i = AV_LOG_DEBUG; i>=AV_LOG_QUIET; i-=8) {
            av_log(((void*)0), i, " %d", i);
            av_log(((void*)0), AV_LOG_INFO, "e ");
            av_log(((void*)0), i + 256*123, "C%d", i);
            av_log(((void*)0), AV_LOG_INFO, "e");
        }
        av_log(((void*)0), AV_LOG_PANIC, "\n");
    }
    {
        int result;
        char buffer[4];
        result = call_log_format_line2("foo", ((void*)0), 0);
        if(result != 3) {
            printf("Test NULL buffer failed.\n");
            return 1;
        }
        result = call_log_format_line2("foo", buffer, 2);
        if(result != 3 || strncmp(buffer, "f", 2)) {
            printf("Test buffer too small failed.\n");
            return 1;
        }
        result = call_log_format_line2("foo", buffer, 4);
        if(result != 3 || strncmp(buffer, "foo", 4)) {
            printf("Test buffer sufficiently big failed.\n");
            return 1;
        }
    }
    return 0;
}
