
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int secret_key ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int key_in; int key_out; int dh; } ;
typedef TYPE_2__ RTMPEContext ;


 int av_rc4_init (int *,int *,int,int) ;
 int ff_dh_compute_shared_secret_key (int ,int const*,int,int *,int) ;
 int ff_rtmp_calc_digest (int const*,int,int ,int *,int,int *) ;
 int ff_rtmp_calc_digest_pos (int const*,int,int,int) ;

int ff_rtmpe_compute_secret_key(URLContext *h, const uint8_t *serverdata,
                                const uint8_t *clientdata, int type)
{
    RTMPEContext *rt = h->priv_data;
    uint8_t secret_key[128], digest[32];
    int server_pos, client_pos;
    int ret;

    if (type) {
        if ((server_pos = ff_rtmp_calc_digest_pos(serverdata, 1532, 632, 772)) < 0)
            return server_pos;
    } else {
        if ((server_pos = ff_rtmp_calc_digest_pos(serverdata, 768, 632, 8)) < 0)
            return server_pos;
    }

    if ((client_pos = ff_rtmp_calc_digest_pos(clientdata, 768, 632, 8)) < 0)
        return client_pos;


    if ((ret = ff_dh_compute_shared_secret_key(rt->dh, serverdata + server_pos,
                                               128, secret_key, sizeof(secret_key))) < 0)
        return ret;


    if ((ret = ff_rtmp_calc_digest(serverdata + server_pos, 128, 0, secret_key,
                                   128, digest)) < 0)
        return ret;
    av_rc4_init(&rt->key_out, digest, 16 * 8, 1);


    if ((ret = ff_rtmp_calc_digest(clientdata + client_pos, 128, 0, secret_key,
                                   128, digest)) < 0)
        return ret;
    av_rc4_init(&rt->key_in, digest, 16 * 8, 1);

    return 0;
}
