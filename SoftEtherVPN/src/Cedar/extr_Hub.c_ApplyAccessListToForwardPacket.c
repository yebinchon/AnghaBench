
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_21__ {scalar_t__ DestUsernameHash; scalar_t__ Discard; } ;
struct TYPE_20__ {int AccessList; } ;
struct TYPE_19__ {int GroupnameHash; int UsernameHash; } ;
struct TYPE_18__ {scalar_t__ AccessChecked; } ;
struct TYPE_17__ {TYPE_1__* PacketAdapter; } ;
struct TYPE_16__ {scalar_t__ Param; } ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ PKT ;
typedef TYPE_4__ HUB_PA ;
typedef TYPE_5__ HUB ;
typedef TYPE_6__ ACCESS ;


 scalar_t__ IsPacketMaskedByAccessList (TYPE_2__*,TYPE_3__*,TYPE_6__*,int ,int ,TYPE_2__*) ;
 TYPE_6__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int UnlockList (int ) ;

bool ApplyAccessListToForwardPacket(HUB *hub, SESSION *src_session, SESSION *dest_session, PKT *p)
{
 UINT i;
 bool pass = 1;
 bool skip = 1;

 if (hub == ((void*)0) || src_session == ((void*)0) || p == ((void*)0) || dest_session == ((void*)0))
 {
  return 0;
 }


 if (p->AccessChecked)
 {
  return 1;
 }

 LockList(hub->AccessList);
 {
  for (i = 0;i < LIST_NUM(hub->AccessList);i++)
  {
   ACCESS *a = LIST_DATA(hub->AccessList, i);


   if (a->DestUsernameHash != 0)
   {
    skip = 0;
   }

   if (skip == 0)
   {
    if (IsPacketMaskedByAccessList(src_session, p, a,
     ((HUB_PA *)dest_session->PacketAdapter->Param)->UsernameHash,
     ((HUB_PA *)dest_session->PacketAdapter->Param)->GroupnameHash,
     dest_session))
    {

     pass = a->Discard ? 0 : 1;


     break;
    }
   }
  }
 }
 UnlockList(hub->AccessList);

 return pass;
}
