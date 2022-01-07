
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pbuf_memory {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_4__ {int * pb_next; struct ifnet* pb_ifp; struct pbuf_memory pb_memory; int pb_type; } ;
typedef TYPE_1__ pbuf_t ;


 int PBUF_TYPE_MEMORY ;
 int pbuf_sync (TYPE_1__*) ;

void
pbuf_init_memory(pbuf_t *pbuf, const struct pbuf_memory *mp, struct ifnet *ifp)
{

 pbuf->pb_type = PBUF_TYPE_MEMORY;
 pbuf->pb_memory = *mp;
 pbuf->pb_ifp = ifp;
 pbuf->pb_next = ((void*)0);
 pbuf_sync(pbuf);
}
