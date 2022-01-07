
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int pktsched_plen; } ;
typedef TYPE_1__ pktsched_pkt_t ;



uint32_t
pktsched_get_pkt_len(pktsched_pkt_t *pkt)
{
 return (pkt->pktsched_plen);
}
