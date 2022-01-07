
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVVorbisParseContext ;


 int * av_mallocz (int) ;
 int av_vorbis_parse_free (int **) ;
 int vorbis_parse_init (int *,int const*,int) ;

AVVorbisParseContext *av_vorbis_parse_init(const uint8_t *extradata,
                                           int extradata_size)
{
    AVVorbisParseContext *s = av_mallocz(sizeof(*s));
    int ret;

    if (!s)
        return ((void*)0);

    ret = vorbis_parse_init(s, extradata, extradata_size);
    if (ret < 0) {
        av_vorbis_parse_free(&s);
        return ((void*)0);
    }

    return s;
}
