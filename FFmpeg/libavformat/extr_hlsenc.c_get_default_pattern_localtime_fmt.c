
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct tm {int dummy; } ;
typedef int b ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ segment_type; } ;
typedef TYPE_1__ HLSContext ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ HAVE_LIBC_MSVCRT ;
 scalar_t__ SEGMENT_TYPE_FMP4 ;
 struct tm* localtime_r (int *,struct tm*) ;
 int strcmp (char*,char*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int time (int *) ;

__attribute__((used)) static const char * get_default_pattern_localtime_fmt(AVFormatContext *s)
{
    char b[21];
    time_t t = time(((void*)0));
    struct tm *p, tmbuf;
    HLSContext *hls = s->priv_data;

    p = localtime_r(&t, &tmbuf);


    if (hls->segment_type == SEGMENT_TYPE_FMP4) {
        return (HAVE_LIBC_MSVCRT || !strftime(b, sizeof(b), "%s", p) || !strcmp(b, "%s")) ? "-%Y%m%d%H%M%S.m4s" : "-%s.m4s";
    }
    return (HAVE_LIBC_MSVCRT || !strftime(b, sizeof(b), "%s", p) || !strcmp(b, "%s")) ? "-%Y%m%d%H%M%S.ts" : "-%s.ts";
}
