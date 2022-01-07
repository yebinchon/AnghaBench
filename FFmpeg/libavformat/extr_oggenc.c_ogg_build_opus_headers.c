
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
typedef int AVChapter ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int ENOMEM ;
 int OPUS_HEADER_SIZE ;
 int * av_mallocz (int) ;
 int bytestream_put_buffer (int **,char*,int) ;
 int * ogg_write_vorbiscomment (int,int,int*,int **,int ,int **,unsigned int) ;

__attribute__((used)) static int ogg_build_opus_headers(AVCodecParameters *par,
                                  OGGStreamContext *oggstream, int bitexact,
                                  AVDictionary **m, AVChapter **chapters,
                                  unsigned int nb_chapters)
{
    uint8_t *p;

    if (par->extradata_size < OPUS_HEADER_SIZE)
        return AVERROR_INVALIDDATA;


    p = av_mallocz(par->extradata_size);
    if (!p)
        return AVERROR(ENOMEM);
    oggstream->header[0] = p;
    oggstream->header_len[0] = par->extradata_size;
    bytestream_put_buffer(&p, par->extradata, par->extradata_size);


    p = ogg_write_vorbiscomment(8, bitexact, &oggstream->header_len[1], m, 0, chapters, nb_chapters);
    if (!p)
        return AVERROR(ENOMEM);
    oggstream->header[1] = p;
    bytestream_put_buffer(&p, "OpusTags", 8);

    return 0;
}
