
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_13__ {int lock; TYPE_1__* ClientOption; } ;
struct TYPE_12__ {int AccountList; } ;
struct TYPE_11__ {int DeviceName; } ;
typedef TYPE_2__ CLIENT ;
typedef TYPE_3__ ACCOUNT ;


 char* CiGetFirstVLan (TYPE_2__*) ;
 int CiIsVLan (TYPE_2__*,int ) ;
 int CiNotify (TYPE_2__*) ;
 int CiSaveConfigurationFile (TYPE_2__*) ;
 int CiSendGlobalPulse (TYPE_2__*) ;
 int Free (char*) ;
 TYPE_3__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int StrCpy (int ,int,char*) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

void CiNormalizeAccountVLan(CLIENT *c)
{
 bool b = 0;
 char *name;
 UINT i;

 if (c == ((void*)0))
 {
  return;
 }

 name = CiGetFirstVLan(c);

 if (name != ((void*)0))
 {
  LockList(c->AccountList);
  {
   for (i = 0;i < LIST_NUM(c->AccountList);i++)
   {
    ACCOUNT *a = LIST_DATA(c->AccountList, i);

    Lock(a->lock);
    {
     if (a->ClientOption != ((void*)0))
     {
      if (CiIsVLan(c, a->ClientOption->DeviceName) == 0)
      {
       StrCpy(a->ClientOption->DeviceName, sizeof(a->ClientOption->DeviceName),
        name);
       b = 1;
      }
     }
    }
    Unlock(a->lock);
   }
  }
  UnlockList(c->AccountList);

  Free(name);
 }

 if (b)
 {
  CiNotify(c);
  CiSendGlobalPulse(c);
  CiSaveConfigurationFile(c);
 }
}
