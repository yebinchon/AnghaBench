
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mark_str2 ;
typedef int ip_str2 ;
typedef int ip_str1 ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int ConditionAndArgs; int Chain; } ;
struct TYPE_6__ {int EntryList; } ;
typedef TYPE_1__ IPTABLES_STATE ;
typedef TYPE_2__ IPTABLES_ENTRY ;
typedef int IP ;


 int Format (char*,int,char*,scalar_t__) ;
 int IPToStr (char*,int,int *) ;
 scalar_t__ InStr (int ,char*) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int ToStr (char*,scalar_t__) ;

IPTABLES_ENTRY *SearchIpTables(IPTABLES_STATE *s, char *chain, IP *src_ip, IP *dest_ip, UINT mark)
{
 char ip_str1[64];
 char ip_str2[64];
 char mark_str1[64];
 char mark_str2[64];
 UINT i;
 if (s == ((void*)0) || chain == ((void*)0) || src_ip == ((void*)0) || dest_ip == ((void*)0) || mark == 0)
 {
  return ((void*)0);
 }

 IPToStr(ip_str1, sizeof(ip_str1), src_ip);
 IPToStr(ip_str2, sizeof(ip_str2), dest_ip);
 ToStr(mark_str1, mark);
 Format(mark_str2, sizeof(mark_str2), "%x", mark);

 for (i = 0;i < LIST_NUM(s->EntryList);i++)
 {
  IPTABLES_ENTRY *e = LIST_DATA(s->EntryList, i);

  if (StrCmpi(e->Chain, chain) == 0)
  {
   if (InStr(e->ConditionAndArgs, ip_str1) &&
    InStr(e->ConditionAndArgs, ip_str2) &&
    (InStr(e->ConditionAndArgs, mark_str1) || InStr(e->ConditionAndArgs, mark_str2)))
   {
    return e;
   }
  }
 }

 return ((void*)0);
}
