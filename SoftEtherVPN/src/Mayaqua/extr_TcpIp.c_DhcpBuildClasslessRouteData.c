
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
typedef size_t UINT ;
typedef size_t UCHAR ;
struct TYPE_5__ {int SubnetMaskLen; int Gateway; int Network; scalar_t__ Exists; } ;
struct TYPE_4__ {scalar_t__ NumExistingRoutes; TYPE_2__* Entries; } ;
typedef TYPE_1__ DHCP_CLASSLESS_ROUTE_TABLE ;
typedef TYPE_2__ DHCP_CLASSLESS_ROUTE ;
typedef int BUF ;


 int Copy (size_t*,int *,size_t) ;
 size_t IPToUINT (int *) ;
 size_t MAX_DHCP_CLASSLESS_ROUTE_ENTRIES ;
 int * NewBuf () ;
 int SeekBufToBegin (int *) ;
 int WriteBuf (int *,size_t*,int) ;
 int Zero (size_t*,int) ;

BUF *DhcpBuildClasslessRouteData(DHCP_CLASSLESS_ROUTE_TABLE *t)
{
 BUF *b;
 UINT i;

 if (t == ((void*)0) || t->NumExistingRoutes == 0)
 {
  return ((void*)0);
 }

 b = NewBuf();

 for (i = 0;i < MAX_DHCP_CLASSLESS_ROUTE_ENTRIES;i++)
 {
  DHCP_CLASSLESS_ROUTE *r = &t->Entries[i];

  if (r->Exists && r->SubnetMaskLen <= 32)
  {
   UCHAR c;
   UINT data_len;
   UINT ip32;
   UCHAR tmp[4];


   c = (UCHAR)r->SubnetMaskLen;
   WriteBuf(b, &c, 1);


   data_len = (r->SubnetMaskLen + 7) / 8;
   Zero(tmp, sizeof(tmp));
   Copy(tmp, &r->Network, data_len);
   WriteBuf(b, tmp, data_len);


   ip32 = IPToUINT(&r->Gateway);
   WriteBuf(b, &ip32, sizeof(UINT));
  }
 }

 SeekBufToBegin(b);

 return b;
}
