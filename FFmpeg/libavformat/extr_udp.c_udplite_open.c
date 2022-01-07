
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int udplite_coverage; } ;
typedef TYPE_2__ UDPContext ;


 int UDP_HEADER_SIZE ;
 int udp_open (TYPE_1__*,char const*,int) ;

__attribute__((used)) static int udplite_open(URLContext *h, const char *uri, int flags)
{
    UDPContext *s = h->priv_data;


    s->udplite_coverage = UDP_HEADER_SIZE;

    return udp_open(h, uri, flags);
}
