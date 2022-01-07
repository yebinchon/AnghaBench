
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int LineNumber; } ;
typedef int IPTABLES_STATE ;
typedef TYPE_1__ IPTABLES_ENTRY ;
typedef int IP ;


 int FreeIpTablesState (int *) ;
 int * GetCurrentIpTables () ;
 TYPE_1__* SearchIpTables (int *,char*,int *,int *,int ) ;

UINT GetCurrentIpTableLineNumber(char *chain, IP *src_ip, IP *dest_ip, UINT mark)
{
 IPTABLES_STATE *s;
 IPTABLES_ENTRY *e;
 UINT ret = 0;

 if (chain == ((void*)0) || src_ip == ((void*)0) || dest_ip == ((void*)0) || mark == 0)
 {
  return 0;
 }

 s = GetCurrentIpTables();

 e = SearchIpTables(s, chain, src_ip, dest_ip, mark);

 if (e != ((void*)0))
 {
  ret = e->LineNumber;
 }

 FreeIpTablesState(s);

 return ret;
}
