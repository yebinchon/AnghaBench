
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVFormatContext ;


 int FFMIN (int,int) ;
 int av_log (int *,int,char*,char const*,char*) ;
 int av_log_get_level () ;
 int ff_data_to_hex (char*,int const*,int,int) ;

__attribute__((used)) static void hex_log(AVFormatContext *s, int level,
                    const char *name, const uint8_t *value, int len)
{
    char buf[33];
    len = FFMIN(len, 16);
    if (av_log_get_level() < level)
        return;
    ff_data_to_hex(buf, value, len, 1);
    buf[len << 1] = '\0';
    av_log(s, level, "%s: %s\n", name, buf);
}
