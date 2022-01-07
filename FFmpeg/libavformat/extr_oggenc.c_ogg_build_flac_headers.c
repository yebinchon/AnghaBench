
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int extradata_size; char* extradata; } ;
struct TYPE_5__ {int* header_len; int ** header; } ;
typedef TYPE_1__ OGGStreamContext ;
typedef int AVDictionary ;
typedef TYPE_2__ AVCodecParameters ;


 int AVERROR (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int FLAC_STREAMINFO_SIZE ;
 int * av_mallocz (int) ;
 int bytestream_put_be16 (int **,int) ;
 int bytestream_put_be24 (int **,int) ;
 int bytestream_put_buffer (int **,char*,int) ;
 int bytestream_put_byte (int **,int) ;
 int * ogg_write_vorbiscomment (int,int,int*,int **,int ,int *,int ) ;

__attribute__((used)) static int ogg_build_flac_headers(AVCodecParameters *par,
                                  OGGStreamContext *oggstream, int bitexact,
                                  AVDictionary **m)
{
    uint8_t *p;

    if (par->extradata_size < FLAC_STREAMINFO_SIZE)
        return AVERROR(EINVAL);


    oggstream->header_len[0] = 51;
    oggstream->header[0] = av_mallocz(51);
    p = oggstream->header[0];
    if (!p)
        return AVERROR(ENOMEM);
    bytestream_put_byte(&p, 0x7F);
    bytestream_put_buffer(&p, "FLAC", 4);
    bytestream_put_byte(&p, 1);
    bytestream_put_byte(&p, 0);
    bytestream_put_be16(&p, 1);
    bytestream_put_buffer(&p, "fLaC", 4);
    bytestream_put_byte(&p, 0x00);
    bytestream_put_be24(&p, 34);
    bytestream_put_buffer(&p, par->extradata, FLAC_STREAMINFO_SIZE);


    p = ogg_write_vorbiscomment(4, bitexact, &oggstream->header_len[1], m, 0, ((void*)0), 0);
    if (!p)
        return AVERROR(ENOMEM);
    oggstream->header[1] = p;
    bytestream_put_byte(&p, 0x84);
    bytestream_put_be24(&p, oggstream->header_len[1] - 4);

    return 0;
}
