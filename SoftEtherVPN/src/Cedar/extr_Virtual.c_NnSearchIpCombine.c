
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int USHORT ;
typedef void* UINT ;
typedef int UCHAR ;
struct TYPE_8__ {int Protocol; int Id; void* SrcIP; void* DestIP; } ;
struct TYPE_7__ {int IpCombine; } ;
typedef TYPE_1__ NATIVE_NAT ;
typedef TYPE_2__ IP_COMBINE ;


 TYPE_2__* Search (int ,TYPE_2__*) ;

IP_COMBINE *NnSearchIpCombine(NATIVE_NAT *t, UINT src_ip, UINT dest_ip, USHORT id, UCHAR protocol)
{
 IP_COMBINE *c, tt;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 tt.DestIP = dest_ip;
 tt.SrcIP = src_ip;
 tt.Id = id;
 tt.Protocol = protocol;

 c = Search(t->IpCombine, &tt);

 return c;
}
