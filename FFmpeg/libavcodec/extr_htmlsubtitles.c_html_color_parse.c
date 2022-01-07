
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FFMAX (int ,int) ;
 scalar_t__ av_parse_color (int*,char const*,int ,void*) ;
 int strcspn (char const*,char*) ;

__attribute__((used)) static int html_color_parse(void *log_ctx, const char *str)
{
    uint8_t rgba[4];
    int nb_sharps = 0;
    while (str[nb_sharps] == '#')
        nb_sharps++;
    str += FFMAX(0, nb_sharps - 1);
    if (av_parse_color(rgba, str, strcspn(str, "\" >"), log_ctx) < 0)
        return -1;
    return rgba[0] | rgba[1] << 8 | rgba[2] << 16;
}
