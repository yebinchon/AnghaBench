
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int AVDictionary ;
typedef int AVChapter ;


 int INT_MAX ;
 char* LIBAVFORMAT_IDENT ;
 int * av_mallocz (int) ;
 int bytestream_put_byte (int **,int) ;
 int ff_metadata_conv (int **,int ,int *) ;
 int ff_vorbiscomment_length (int *,char const*,int **,unsigned int) ;
 int ff_vorbiscomment_metadata_conv ;
 int ff_vorbiscomment_write (int **,int **,char const*,int **,unsigned int) ;

__attribute__((used)) static uint8_t *ogg_write_vorbiscomment(int64_t offset, int bitexact,
                                        int *header_len, AVDictionary **m, int framing_bit,
                                        AVChapter **chapters, unsigned int nb_chapters)
{
    const char *vendor = bitexact ? "ffmpeg" : LIBAVFORMAT_IDENT;
    int64_t size;
    uint8_t *p, *p0;

    ff_metadata_conv(m, ff_vorbiscomment_metadata_conv, ((void*)0));

    size = offset + ff_vorbiscomment_length(*m, vendor, chapters, nb_chapters) + framing_bit;
    if (size > INT_MAX)
        return ((void*)0);
    p = av_mallocz(size);
    if (!p)
        return ((void*)0);
    p0 = p;

    p += offset;
    ff_vorbiscomment_write(&p, m, vendor, chapters, nb_chapters);
    if (framing_bit)
        bytestream_put_byte(&p, 1);

    *header_len = size;
    return p0;
}
