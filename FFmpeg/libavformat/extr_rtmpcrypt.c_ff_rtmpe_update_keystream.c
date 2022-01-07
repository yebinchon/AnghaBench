
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int handshaked; int key_out; int key_in; } ;
typedef TYPE_2__ RTMPEContext ;


 int RTMP_HANDSHAKE_PACKET_SIZE ;
 int av_rc4_crypt (int *,char*,int *,int,int *,int) ;

int ff_rtmpe_update_keystream(URLContext *h)
{
    RTMPEContext *rt = h->priv_data;
    char buf[RTMP_HANDSHAKE_PACKET_SIZE];


    av_rc4_crypt(&rt->key_in, buf, ((void*)0), sizeof(buf), ((void*)0), 1);
    av_rc4_crypt(&rt->key_out, buf, ((void*)0), sizeof(buf), ((void*)0), 1);


    rt->handshaked = 1;

    return 0;
}
