
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_8__ {int StormList; } ;
struct TYPE_7__ {int StrictMode; int * MacAddress; int DestIp; int SrcIp; } ;
typedef TYPE_1__ STORM ;
typedef int IP ;
typedef TYPE_2__ HUB_PA ;


 int Copy (int *,int *,int) ;
 int Insert (int ,TYPE_1__*) ;
 TYPE_1__* ZeroMalloc (int) ;

STORM *AddStormList(HUB_PA *pa, UCHAR *mac_address, IP *src_ip, IP *dest_ip, bool strict)
{
 STORM *s;

 if (pa == ((void*)0) || mac_address == ((void*)0))
 {
  return ((void*)0);
 }

 s = ZeroMalloc(sizeof(STORM));
 if (src_ip != ((void*)0))
 {
  Copy(&s->SrcIp, src_ip, sizeof(IP));
 }
 if (dest_ip != ((void*)0))
 {
  Copy(&s->DestIp, dest_ip, sizeof(IP));
 }
 Copy(s->MacAddress, mac_address, 6);
 s->StrictMode = strict;

 Insert(pa->StormList, s);

 return s;
}
