
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int other; } ;
struct ndrv_demux_desc {scalar_t__ type; int length; TYPE_1__ data; } ;
struct ifnet_demux_desc {scalar_t__ type; int datalen; int data; } ;


 scalar_t__ DLIL_DESC_ETYPE2 ;
 int EINVAL ;
 int ENOTSUP ;
 int bzero (struct ifnet_demux_desc*,int) ;

int
ndrv_to_ifnet_demux(struct ndrv_demux_desc* ndrv, struct ifnet_demux_desc* ifdemux)
{
    bzero(ifdemux, sizeof(*ifdemux));

    if (ndrv->type < DLIL_DESC_ETYPE2)
    {

        return ENOTSUP;
    }

    if (ndrv->length > 28)
    {
        return EINVAL;
    }

    ifdemux->type = ndrv->type;
    ifdemux->data = ndrv->data.other;
    ifdemux->datalen = ndrv->length;

    return 0;
}
