
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int IpCombine; } ;
typedef TYPE_1__ VH ;
typedef int USHORT ;
typedef void* UINT ;
typedef int UCHAR ;
struct TYPE_8__ {int Protocol; int Id; void* SrcIP; void* DestIP; } ;
typedef TYPE_2__ IP_COMBINE ;


 TYPE_2__* Search (int ,TYPE_2__*) ;

IP_COMBINE *SearchIpCombine(VH *v, UINT src_ip, UINT dest_ip, USHORT id, UCHAR protocol)
{
 IP_COMBINE *c, t;

 if (v == ((void*)0))
 {
  return ((void*)0);
 }

 t.DestIP = dest_ip;
 t.SrcIP = src_ip;
 t.Id = id;
 t.Protocol = protocol;

 c = Search(v->IpCombine, &t);

 return c;
}
