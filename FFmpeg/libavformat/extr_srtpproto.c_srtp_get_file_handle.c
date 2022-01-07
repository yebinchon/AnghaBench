
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int rtp_hd; } ;
typedef TYPE_2__ SRTPProtoContext ;


 int ffurl_get_file_handle (int ) ;

__attribute__((used)) static int srtp_get_file_handle(URLContext *h)
{
    SRTPProtoContext *s = h->priv_data;
    return ffurl_get_file_handle(s->rtp_hd);
}
