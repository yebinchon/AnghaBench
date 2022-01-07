
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int t ;
typedef int UCHAR ;
struct TYPE_9__ {int StormList; } ;
struct TYPE_8__ {int StrictMode; int * MacAddress; int DestIp; int SrcIp; } ;
typedef TYPE_1__ STORM ;
typedef int IP ;
typedef TYPE_2__ HUB_PA ;


 int Copy (int *,int *,int) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;

STORM *SearchStormList(HUB_PA *pa, UCHAR *mac_address, IP *src_ip, IP *dest_ip, bool strict)
{
 STORM t, *s;

 if (pa == ((void*)0) || mac_address == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&t, sizeof(t));
 if (src_ip != ((void*)0))
 {
  Copy(&t.SrcIp, src_ip, sizeof(IP));
 }
 if (dest_ip != ((void*)0))
 {
  Copy(&t.DestIp, dest_ip, sizeof(IP));
 }
 Copy(t.MacAddress, mac_address, 6);

 t.StrictMode = strict;

 s = Search(pa->StormList, &t);

 return s;
}
