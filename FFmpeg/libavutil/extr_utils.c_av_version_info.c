
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* FFMPEG_VERSION ;

const char *av_version_info(void)
{
    return FFMPEG_VERSION;
}
