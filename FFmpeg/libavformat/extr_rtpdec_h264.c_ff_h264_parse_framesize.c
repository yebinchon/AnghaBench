
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf1 ;
struct TYPE_3__ {void* height; void* width; } ;
typedef TYPE_1__ AVCodecParameters ;


 void* atoi (char const*) ;

void ff_h264_parse_framesize(AVCodecParameters *par, const char *p)
{
    char buf1[50];
    char *dst = buf1;


    while (*p && *p == ' ')
        p++;
    while (*p && *p != ' ')
        p++;
    while (*p && *p == ' ')
        p++;
    while (*p && *p != '-' && (dst - buf1) < sizeof(buf1) - 1)
        *dst++ = *p++;
    *dst = '\0';



    par->width = atoi(buf1);
    par->height = atoi(p + 1);
}
