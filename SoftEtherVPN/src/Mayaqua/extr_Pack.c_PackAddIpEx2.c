
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tmp ;
typedef int dummy ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_10__ {int JsonHint_IsArray; int JsonHint_IsIP; } ;
struct TYPE_9__ {int ipv6_scope_id; int * ipv6_addr; } ;
typedef int PACK ;
typedef TYPE_1__ IP ;
typedef TYPE_2__ ELEMENT ;


 int Format (char*,int,char*,char*) ;
 int IPToUINT (TYPE_1__*) ;
 scalar_t__ IsBigEndian () ;
 int IsIP6 (TYPE_1__*) ;
 int MAX_PATH ;
 TYPE_2__* PackAddBoolEx (int *,char*,int,int,int) ;
 TYPE_2__* PackAddDataEx (int *,char*,int *,int,int,int) ;
 TYPE_2__* PackAddIntEx (int *,char*,int,int,int) ;
 int Swap32 (int) ;
 int Zero (int *,int) ;

void PackAddIpEx2(PACK *p, char *name, IP *ip, UINT index, UINT total, bool is_single)
{
 UINT i;
 bool b = 0;
 char tmp[MAX_PATH];
 ELEMENT *e;

 if (p == ((void*)0) || name == ((void*)0) || ip == ((void*)0))
 {
  return;
 }
 if (total >= 2)
 {
  is_single = 0;
 }

 b = IsIP6(ip);

 Format(tmp, sizeof(tmp), "%s@ipv6_bool", name);
 e = PackAddBoolEx(p, tmp, b, index, total);
 if (e != ((void*)0) && is_single) e->JsonHint_IsArray = 0;
 if (e != ((void*)0)) e->JsonHint_IsIP = 1;

 Format(tmp, sizeof(tmp), "%s@ipv6_array", name);
 if (b)
 {
  e = PackAddDataEx(p, tmp, ip->ipv6_addr, sizeof(ip->ipv6_addr), index, total);
  if (e != ((void*)0) && is_single) e->JsonHint_IsArray = 0;
  if (e != ((void*)0)) e->JsonHint_IsIP = 1;
 }
 else
 {
  UCHAR dummy[16];

  Zero(dummy, sizeof(dummy));

  e = PackAddDataEx(p, tmp, dummy, sizeof(dummy), index, total);
  if (e != ((void*)0) && is_single) e->JsonHint_IsArray = 0;
  if (e != ((void*)0)) e->JsonHint_IsIP = 1;
 }

 Format(tmp, sizeof(tmp), "%s@ipv6_scope_id", name);
 if (b)
 {
  e = PackAddIntEx(p, tmp, ip->ipv6_scope_id, index, total);
  if (e != ((void*)0) && is_single) e->JsonHint_IsArray = 0;
  if (e != ((void*)0)) e->JsonHint_IsIP = 1;
 }
 else
 {
  e = PackAddIntEx(p, tmp, 0, index, total);
  if (e != ((void*)0) && is_single) e->JsonHint_IsArray = 0;
  if (e != ((void*)0)) e->JsonHint_IsIP = 1;
 }

 i = IPToUINT(ip);

 if (IsBigEndian())
 {
  i = Swap32(i);
 }

 e = PackAddIntEx(p, name, i, index, total);
 if (e != ((void*)0) && is_single) e->JsonHint_IsArray = 0;
 if (e != ((void*)0)) e->JsonHint_IsIP = 1;
}
