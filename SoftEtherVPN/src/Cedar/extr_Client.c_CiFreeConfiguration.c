
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UNIX_VLAN ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {int * UnixVLanList; int * AccountList; int CfgRw; } ;
typedef TYPE_1__ CLIENT ;
typedef int ACCOUNT ;


 int CiFreeAccount (int *) ;
 int CiSaveConfigurationFile (TYPE_1__*) ;
 int Free (int *) ;
 int FreeCfgRw (int ) ;
 void* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;
 int UnixVLanFree () ;

void CiFreeConfiguration(CLIENT *c)
{
 UINT i;

 if (c == ((void*)0))
 {
  return;
 }


 CiSaveConfigurationFile(c);


 FreeCfgRw(c->CfgRw);


 for (i = 0;i < LIST_NUM(c->AccountList);i++)
 {
  ACCOUNT *a = LIST_DATA(c->AccountList, i);

  CiFreeAccount(a);
 }
 ReleaseList(c->AccountList);

 if (c->UnixVLanList != ((void*)0))
 {

  for (i = 0;i < LIST_NUM(c->UnixVLanList);i++)
  {
   UNIX_VLAN *v = LIST_DATA(c->UnixVLanList, i);
   Free(v);
  }
  ReleaseList(c->UnixVLanList);
 }
 c->UnixVLanList = ((void*)0);





}
