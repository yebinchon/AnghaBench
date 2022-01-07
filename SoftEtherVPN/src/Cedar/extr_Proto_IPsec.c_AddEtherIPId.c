
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int t ;
struct TYPE_14__ {int Id; } ;
struct TYPE_13__ {int LockSettings; int EtherIPIdListSettingVerNo; int EtherIPIdList; } ;
typedef TYPE_1__ IPSEC_SERVER ;
typedef TYPE_2__ ETHERIP_ID ;


 TYPE_2__* Clone (TYPE_2__*,int) ;
 int Delete (int ,TYPE_2__*) ;
 int Free (TYPE_2__*) ;
 int Insert (int ,TYPE_2__*) ;
 int Lock (int ) ;
 TYPE_2__* Search (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int Zero (TYPE_2__*,int) ;

void AddEtherIPId(IPSEC_SERVER *s, ETHERIP_ID *id)
{

 if (s == ((void*)0) || id == ((void*)0))
 {
  return;
 }

 Lock(s->LockSettings);
 {

  ETHERIP_ID t, *k;

  Zero(&t, sizeof(t));

  StrCpy(t.Id, sizeof(t.Id), id->Id);

  k = Search(s->EtherIPIdList, &t);

  if (k != ((void*)0))
  {
   Delete(s->EtherIPIdList, k);

   Free(k);
  }


  k = Clone(id, sizeof(ETHERIP_ID));

  Insert(s->EtherIPIdList, k);

  s->EtherIPIdListSettingVerNo++;
 }
 Unlock(s->LockSettings);
}
