
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int t ;
struct TYPE_11__ {int Id; } ;
struct TYPE_10__ {int LockSettings; int EtherIPIdList; } ;
typedef TYPE_1__ IPSEC_SERVER ;
typedef TYPE_2__ ETHERIP_ID ;


 int Copy (TYPE_2__*,TYPE_2__*,int) ;
 int Lock (int ) ;
 TYPE_2__* Search (int ,TYPE_2__*) ;
 int StrCpy (int ,int,char*) ;
 int Unlock (int ) ;
 int Zero (TYPE_2__*,int) ;

bool SearchEtherIPId(IPSEC_SERVER *s, ETHERIP_ID *id, char *id_str)
{
 bool ret = 0;

 if (s == ((void*)0) || id == ((void*)0) || id_str == ((void*)0))
 {
  return 0;
 }

 Lock(s->LockSettings);
 {
  ETHERIP_ID t, *k;

  Zero(&t, sizeof(t));

  StrCpy(t.Id, sizeof(t.Id), id_str);

  k = Search(s->EtherIPIdList, &t);

  if (k != ((void*)0))
  {
   Copy(id, k, sizeof(ETHERIP_ID));

   ret = 1;
  }
 }
 Unlock(s->LockSettings);

 return ret;
}
