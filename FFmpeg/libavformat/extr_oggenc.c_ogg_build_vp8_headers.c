
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int den; int num; } ;
struct TYPE_15__ {TYPE_1__ sample_aspect_ratio; int height; int width; } ;
struct TYPE_12__ {int num; int den; } ;
struct TYPE_11__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_14__ {int metadata; TYPE_3__ time_base; TYPE_2__ r_frame_rate; TYPE_6__* codecpar; } ;
struct TYPE_13__ {int isvp8; int ** header; int * header_len; } ;
typedef TYPE_4__ OGGStreamContext ;
typedef TYPE_5__ AVStream ;
typedef int AVFormatContext ;
typedef TYPE_6__ AVCodecParameters ;


 int AVERROR (int ) ;
 int AV_DICT_IGNORE_SUFFIX ;
 int AV_LOG_DEBUG ;
 int ENOMEM ;
 int VP8_HEADER_SIZE ;
 scalar_t__ av_dict_get (int ,char*,int *,int ) ;
 int av_log (int *,int ,char*,int ,int ,scalar_t__,scalar_t__) ;
 int * av_mallocz (int ) ;
 int avpriv_set_pts_info (TYPE_5__*,int,scalar_t__,scalar_t__) ;
 int bytestream_put_be16 (int **,int ) ;
 int bytestream_put_be24 (int **,int ) ;
 int bytestream_put_be32 (int **,int ) ;
 int bytestream_put_buffer (int **,char*,int) ;
 int bytestream_put_byte (int **,int) ;
 int * ogg_write_vorbiscomment (int,int,int *,int *,int ,int *,int ) ;

__attribute__((used)) static int ogg_build_vp8_headers(AVFormatContext *s, AVStream *st,
                                 OGGStreamContext *oggstream, int bitexact)
{
    AVCodecParameters *par = st->codecpar;
    uint8_t *p;


    p = av_mallocz(VP8_HEADER_SIZE);
    if (!p)
        return AVERROR(ENOMEM);
    oggstream->header[0] = p;
    oggstream->header_len[0] = VP8_HEADER_SIZE;
    bytestream_put_byte(&p, 0x4f);
    bytestream_put_buffer(&p, "VP80", 4);
    bytestream_put_byte(&p, 1);
    bytestream_put_byte(&p, 1);
    bytestream_put_byte(&p, 0);
    bytestream_put_be16(&p, par->width);
    bytestream_put_be16(&p, par->height);
    bytestream_put_be24(&p, par->sample_aspect_ratio.num);
    bytestream_put_be24(&p, par->sample_aspect_ratio.den);
    if (st->r_frame_rate.num > 0 && st->r_frame_rate.den > 0) {


        av_log(s, AV_LOG_DEBUG, "Changing time base from %d/%d to %d/%d\n",
               st->time_base.num, st->time_base.den,
               st->r_frame_rate.den, st->r_frame_rate.num);
        avpriv_set_pts_info(st, 64, st->r_frame_rate.den, st->r_frame_rate.num);
    }
    bytestream_put_be32(&p, st->time_base.den);
    bytestream_put_be32(&p, st->time_base.num);


    if (av_dict_get(st->metadata, "", ((void*)0), AV_DICT_IGNORE_SUFFIX)) {
        p = ogg_write_vorbiscomment(7, bitexact, &oggstream->header_len[1], &st->metadata, 0, ((void*)0), 0);
        if (!p)
            return AVERROR(ENOMEM);
        oggstream->header[1] = p;
        bytestream_put_byte(&p, 0x4f);
        bytestream_put_buffer(&p, "VP80", 4);
        bytestream_put_byte(&p, 2);
        bytestream_put_byte(&p, 0x20);
    }

    oggstream->isvp8 = 1;

    return 0;
}
