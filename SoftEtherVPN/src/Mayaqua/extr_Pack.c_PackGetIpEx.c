
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int tmp ;
typedef int data ;
typedef int UINT ;
struct TYPE_9__ {int ipv6_scope_id; } ;
typedef TYPE_1__ UCHAR ;
typedef int PACK ;
typedef TYPE_1__ IP ;


 int Format (char*,int,char*,char*) ;
 int * GetElement (int *,char*,int ) ;
 scalar_t__ IsBigEndian () ;
 int MAX_PATH ;
 scalar_t__ PackGetBoolEx (int *,char*,int ) ;
 int PackGetDataEx2 (int *,char*,TYPE_1__*,int,int ) ;
 int PackGetIntEx (int *,char*,int ) ;
 int SetIP6 (TYPE_1__*,TYPE_1__*) ;
 int Swap32 (int ) ;
 int UINTToIP (TYPE_1__*,int ) ;
 int VALUE_INT ;
 int Zero (TYPE_1__*,int) ;

bool PackGetIpEx(PACK *p, char *name, IP *ip, UINT index)
{
 UINT i;
 char tmp[MAX_PATH];

 if (p == ((void*)0) || ip == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 Format(tmp, sizeof(tmp), "%s@ipv6_bool", name);
 if (PackGetBoolEx(p, tmp, index))
 {
  UCHAR data[16];
  UINT scope_id;

  Zero(data, sizeof(data));

  Format(tmp, sizeof(tmp), "%s@ipv6_array", name);
  PackGetDataEx2(p, tmp, data, sizeof(data), index);

  Format(tmp, sizeof(tmp), "%s@ipv6_scope_id", name);
  scope_id = PackGetIntEx(p, tmp, index);

  SetIP6(ip, data);
  ip->ipv6_scope_id = scope_id;
 }
 else
 {
  if (GetElement(p, name, VALUE_INT) == ((void*)0))
  {
   Zero(ip, sizeof(IP));
   return 0;
  }

  i = PackGetIntEx(p, name, index);

  if (IsBigEndian())
  {
   i = Swap32(i);
  }

  UINTToIP(ip, i);
 }

 return 1;
}
