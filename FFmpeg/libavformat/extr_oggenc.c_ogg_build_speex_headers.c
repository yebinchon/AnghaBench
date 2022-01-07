
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {scalar_t__ extradata_size; int extradata; } ;
struct TYPE_5__ {int ** header; scalar_t__* header_len; } ;
typedef TYPE_1__ OGGStreamContext ;
typedef int AVDictionary ;
typedef TYPE_2__ AVCodecParameters ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_WL32 (int *,int ) ;
 int ENOMEM ;
 scalar_t__ SPEEX_HEADER_SIZE ;
 int * av_mallocz (scalar_t__) ;
 int bytestream_put_buffer (int **,int ,scalar_t__) ;
 int * ogg_write_vorbiscomment (int ,int,scalar_t__*,int **,int ,int *,int ) ;

__attribute__((used)) static int ogg_build_speex_headers(AVCodecParameters *par,
                                   OGGStreamContext *oggstream, int bitexact,
                                   AVDictionary **m)
{
    uint8_t *p;

    if (par->extradata_size < SPEEX_HEADER_SIZE)
        return AVERROR_INVALIDDATA;


    p = av_mallocz(SPEEX_HEADER_SIZE);
    if (!p)
        return AVERROR(ENOMEM);
    oggstream->header[0] = p;
    oggstream->header_len[0] = SPEEX_HEADER_SIZE;
    bytestream_put_buffer(&p, par->extradata, SPEEX_HEADER_SIZE);
    AV_WL32(&oggstream->header[0][68], 0);


    p = ogg_write_vorbiscomment(0, bitexact, &oggstream->header_len[1], m, 0, ((void*)0), 0);
    if (!p)
        return AVERROR(ENOMEM);
    oggstream->header[1] = p;

    return 0;
}
