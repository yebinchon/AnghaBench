
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_20__ {int ResponderCookie; scalar_t__ InitiatorCookie; int TransformSetting; int LastCommTick; int FirstCommTick; scalar_t__ Mode; int * IkeClient; scalar_t__ Id; } ;
struct TYPE_19__ {int CryptoKeySize; int LifeSeconds; int LifeKilobytes; TYPE_3__* Crypto; TYPE_2__* Hash; TYPE_1__* Dh; } ;
struct TYPE_18__ {int Now; scalar_t__ CurrentIkeSaId; } ;
struct TYPE_17__ {int Name; } ;
struct TYPE_16__ {int Name; } ;
struct TYPE_15__ {int Name; } ;
typedef TYPE_4__ IKE_SERVER ;
typedef TYPE_5__ IKE_SA_TRANSFORM_SETTING ;
typedef TYPE_6__ IKE_SA ;
typedef int IKE_CLIENT ;


 int Copy (int *,TYPE_5__*,int) ;
 int Debug (char*,scalar_t__,scalar_t__,int ,int ,int ,int ,int,int ,int ) ;
 int GenerateNewResponserCookie (TYPE_4__*) ;
 scalar_t__ IKE_SA_MAIN_MODE ;
 int IPsecLog (TYPE_4__*,int *,TYPE_6__*,int *,char*,int ,scalar_t__,int ,int ,int ,int ,int,int ,int ) ;
 TYPE_6__* ZeroMalloc (int) ;
 int _UU (char*) ;

IKE_SA *NewIkeSa(IKE_SERVER *ike, IKE_CLIENT *c, UINT64 init_cookie, UINT mode, IKE_SA_TRANSFORM_SETTING *setting)
{
 IKE_SA *sa;

 if (ike == ((void*)0) || c == ((void*)0) || init_cookie == 0 || setting == ((void*)0))
 {
  return ((void*)0);
 }

 sa = ZeroMalloc(sizeof(IKE_SA));

 sa->Id = ++ike->CurrentIkeSaId;

 sa->IkeClient = c;
 sa->InitiatorCookie = init_cookie;
 sa->ResponderCookie = GenerateNewResponserCookie(ike);
 sa->Mode = mode;
 sa->FirstCommTick = sa->LastCommTick = ike->Now;
 Copy(&sa->TransformSetting, setting, sizeof(IKE_SA_TRANSFORM_SETTING));

 Debug("New IKE SA (Mode = %u): %I64u <--> %I64u (%s %s %s(%u) %u %u)\n",
  mode,
  sa->InitiatorCookie,
  sa->ResponderCookie,
  setting->Dh->Name, setting->Hash->Name, setting->Crypto->Name, setting->CryptoKeySize,
  setting->LifeKilobytes, setting->LifeSeconds);

 IPsecLog(ike, ((void*)0), sa, ((void*)0), "LI_NEW_IKE_SA",
  (mode == IKE_SA_MAIN_MODE ? _UU("LI_TAG_MAINMODE") : _UU("LI_TAG_AGGRESSIVE")),
  sa->InitiatorCookie, sa->ResponderCookie,
  setting->Dh->Name, setting->Hash->Name, setting->Crypto->Name, setting->CryptoKeySize * 8,
  setting->LifeKilobytes, setting->LifeSeconds);

 return sa;
}
