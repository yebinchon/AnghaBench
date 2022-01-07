
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVVorbisParseContext ;


 int av_freep (int **) ;

void av_vorbis_parse_free(AVVorbisParseContext **s)
{
    av_freep(s);
}
