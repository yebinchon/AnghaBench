
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int AVIOContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int EINVAL ;
 int ENOMEM ;
 char* LIBAVFORMAT_IDENT ;
 int av_freep (int **) ;
 int * av_malloc (int) ;
 int avio_write (int *,int *,int) ;
 int bytestream_put_be24 (int **,int) ;
 int bytestream_put_byte (int **,int) ;
 int ff_metadata_conv (int **,int ,int *) ;
 int ff_vorbiscomment_length (int *,char const*,int *,int ) ;
 int ff_vorbiscomment_metadata_conv ;
 int ff_vorbiscomment_write (int **,int **,char const*,int *,int ) ;

__attribute__((used)) static int flac_write_block_comment(AVIOContext *pb, AVDictionary **m,
                                    int last_block, int bitexact)
{
    const char *vendor = bitexact ? "ffmpeg" : LIBAVFORMAT_IDENT;
    int64_t len;
    uint8_t *p, *p0;

    ff_metadata_conv(m, ff_vorbiscomment_metadata_conv, ((void*)0));

    len = ff_vorbiscomment_length(*m, vendor, ((void*)0), 0);
    if (len >= ((1<<24) - 4))
        return AVERROR(EINVAL);
    p0 = av_malloc(len+4);
    if (!p0)
        return AVERROR(ENOMEM);
    p = p0;

    bytestream_put_byte(&p, last_block ? 0x84 : 0x04);
    bytestream_put_be24(&p, len);
    ff_vorbiscomment_write(&p, m, vendor, ((void*)0), 0);

    avio_write(pb, p0, len+4);
    av_freep(&p0);
    p = ((void*)0);

    return 0;
}
