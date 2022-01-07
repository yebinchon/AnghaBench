
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int dh; } ;
typedef TYPE_2__ RTMPEContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int ff_dh_generate_public_key (int ) ;
 int ff_dh_init (int) ;
 int ff_dh_write_public_key (int ,int *,int) ;
 int ff_rtmp_calc_digest_pos (int *,int,int,int) ;

int ff_rtmpe_gen_pub_key(URLContext *h, uint8_t *buf)
{
    RTMPEContext *rt = h->priv_data;
    int offset, ret;

    if (!(rt->dh = ff_dh_init(1024)))
        return AVERROR(ENOMEM);

    offset = ff_rtmp_calc_digest_pos(buf, 768, 632, 8);
    if (offset < 0)
        return offset;


    if ((ret = ff_dh_generate_public_key(rt->dh)) < 0)
        return ret;


    if ((ret = ff_dh_write_public_key(rt->dh, buf + offset, 128)) < 0)
        return ret;

    return 0;
}
