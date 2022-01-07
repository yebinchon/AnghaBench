
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVVorbisParseContext ;


 int av_vorbis_parse_frame_flags (int *,int const*,int,int *) ;

int av_vorbis_parse_frame(AVVorbisParseContext *s, const uint8_t *buf,
                          int buf_size)
{
    return av_vorbis_parse_frame_flags(s, buf, buf_size, ((void*)0));
}
