
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int URLContext ;
struct TYPE_3__ {int swfhash_len; int swfhash; int swfsize; int * swfverification; } ;
typedef TYPE_1__ RTMPContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (int *,int ,char*) ;
 int bytestream_put_be32 (int **,int ) ;
 int bytestream_put_byte (int **,int) ;
 int ff_rtmp_calc_digest (int ,int,int ,int *,int,int *) ;

__attribute__((used)) static int rtmp_calc_swf_verification(URLContext *s, RTMPContext *rt,
                                      uint8_t *buf)
{
    uint8_t *p;
    int ret;

    if (rt->swfhash_len != 32) {
        av_log(s, AV_LOG_ERROR,
               "Hash of the decompressed SWF file is not 32 bytes long.\n");
        return AVERROR(EINVAL);
    }

    p = &rt->swfverification[0];
    bytestream_put_byte(&p, 1);
    bytestream_put_byte(&p, 1);
    bytestream_put_be32(&p, rt->swfsize);
    bytestream_put_be32(&p, rt->swfsize);

    if ((ret = ff_rtmp_calc_digest(rt->swfhash, 32, 0, buf, 32, p)) < 0)
        return ret;

    return 0;
}
