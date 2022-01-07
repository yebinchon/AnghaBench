
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int HubList; } ;
struct TYPE_10__ {char* Name; } ;
struct TYPE_8__ {int L2TP_DefaultHub; int IPsec_Secret; } ;
struct TYPE_9__ {int LockSettings; TYPE_1__ Services; TYPE_4__* Cedar; } ;
typedef TYPE_2__ IPSEC_SERVER ;
typedef TYPE_3__ HUB ;
typedef TYPE_4__ CEDAR ;


 char* IPSEC_DEFAULT_SECRET ;
 scalar_t__ IsEmptyStr (int ) ;
 int IsHub (TYPE_4__*,int ) ;
 TYPE_3__* LIST_DATA (int ,int ) ;
 int LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int StrCpy (int ,int,char*) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

void IPsecNormalizeServiceSetting(IPSEC_SERVER *s)
{
 CEDAR *c;

 if (s == ((void*)0))
 {
  return;
 }

 c = s->Cedar;

 Lock(s->LockSettings);
 {
  bool reset_hub_setting = 0;

  if (IsEmptyStr(s->Services.IPsec_Secret))
  {

   StrCpy(s->Services.IPsec_Secret, sizeof(s->Services.IPsec_Secret), IPSEC_DEFAULT_SECRET);
  }

  LockList(c->HubList);
  {
   if (IsEmptyStr(s->Services.L2TP_DefaultHub))
   {
    reset_hub_setting = 1;
   }
   else
   {
    if (IsHub(c, s->Services.L2TP_DefaultHub) == 0)
    {
     reset_hub_setting = 1;
    }
   }

   if (reset_hub_setting)
   {

    HUB *h = ((void*)0);

    if (LIST_NUM(c->HubList) >= 1)
    {
     h = LIST_DATA(c->HubList, 0);
    }

    if (h != ((void*)0))
    {
     StrCpy(s->Services.L2TP_DefaultHub, sizeof(s->Services.L2TP_DefaultHub), h->Name);
    }
    else
    {
     StrCpy(s->Services.L2TP_DefaultHub, sizeof(s->Services.L2TP_DefaultHub), "");
    }
   }
  }
  UnlockList(c->HubList);
 }
 Unlock(s->LockSettings);
}
