
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* Session; int CancelList; int IpPacketQueue; } ;
struct TYPE_5__ {int Cancel1; } ;
typedef int L3PACKET ;
typedef TYPE_2__ L3IF ;


 int AddCancelList (int ,int ) ;
 int InsertQueue (int ,int *) ;

void L3StoreIpPacketToIf(L3IF *src_if, L3IF *dst_if, L3PACKET *p)
{

 if (src_if == ((void*)0) || p == ((void*)0) || dst_if == ((void*)0))
 {
  return;
 }


 InsertQueue(dst_if->IpPacketQueue, p);


 AddCancelList(src_if->CancelList, dst_if->Session->Cancel1);
}
