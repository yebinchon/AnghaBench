
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef float uint8_t ;
typedef int int64_t ;
struct TYPE_11__ {int protocol_blacklist; int protocol_whitelist; int interrupt_callback; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_12__ {int swfsize; int swfverify; } ;
typedef TYPE_2__ RTMPContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVIO_FLAG_READ ;
 int AVSEEK_SIZE ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int av_freep (float**) ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 float* av_malloc (int) ;
 int av_opt_set_bin (TYPE_2__*,char*,char*,int,int ) ;
 int ff_rtmp_calc_digest (float*,int,int ,char*,int,char*) ;
 int ffurl_close (TYPE_1__*) ;
 int ffurl_open_whitelist (TYPE_1__**,int ,int ,int *,int *,int ,int ,TYPE_1__*) ;
 int ffurl_read_complete (TYPE_1__*,float*,int) ;
 int ffurl_seek (TYPE_1__*,int ,int ) ;
 int memcmp (float*,char*,int) ;
 int memcpy (float*,float*,int) ;
 int rtmp_uncompress_swfplayer (float*,int,float**,int*) ;

__attribute__((used)) static int rtmp_calc_swfhash(URLContext *s)
{
    RTMPContext *rt = s->priv_data;
    uint8_t *in_data = ((void*)0), *out_data = ((void*)0), *swfdata;
    int64_t in_size;
    URLContext *stream;
    char swfhash[32];
    int swfsize;
    int ret = 0;


    if ((ret = ffurl_open_whitelist(&stream, rt->swfverify, AVIO_FLAG_READ,
                                    &s->interrupt_callback, ((void*)0),
                                    s->protocol_whitelist, s->protocol_blacklist, s)) < 0) {
        av_log(s, AV_LOG_ERROR, "Cannot open connection %s.\n", rt->swfverify);
        goto fail;
    }

    if ((in_size = ffurl_seek(stream, 0, AVSEEK_SIZE)) < 0) {
        ret = AVERROR(EIO);
        goto fail;
    }

    if (!(in_data = av_malloc(in_size))) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    if ((ret = ffurl_read_complete(stream, in_data, in_size)) < 0)
        goto fail;

    if (in_size < 3) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    if (!memcmp(in_data, "CWS", 3)) {
        av_log(s, AV_LOG_ERROR,
               "Zlib is required for decompressing the SWF player file.\n");
        ret = AVERROR(EINVAL);
        goto fail;

    } else {
        swfsize = in_size;
        swfdata = in_data;
    }


    if ((ret = ff_rtmp_calc_digest(swfdata, swfsize, 0,
                                   "Genuine Adobe Flash Player 001", 30,
                                   swfhash)) < 0)
        goto fail;


    av_opt_set_bin(rt, "rtmp_swfhash", swfhash, 32, 0);
    rt->swfsize = swfsize;

fail:
    av_freep(&in_data);
    av_freep(&out_data);
    ffurl_close(stream);
    return ret;
}
