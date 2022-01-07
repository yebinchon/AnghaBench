
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int device_name ;
struct TYPE_11__ {char* Name; } ;
typedef TYPE_2__ UNIX_VLAN ;
typedef int UINT ;
struct TYPE_14__ {int lock; TYPE_1__* ClientOption; } ;
struct TYPE_13__ {int AccountList; int UnixVLanList; } ;
struct TYPE_12__ {int NumTokens; char** Token; } ;
struct TYPE_10__ {char* DeviceName; } ;
typedef TYPE_3__ TOKEN_LIST ;
typedef TYPE_4__ CLIENT ;
typedef TYPE_5__ ACCOUNT ;


 int CiIsVLan (TYPE_4__*,char*) ;
 int FreeToken (TYPE_3__*) ;
 void* LIST_DATA (int ,int) ;
 int LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int MAX_SIZE ;
 TYPE_3__* MsEnumNetworkAdapters (int ,int ) ;
 int StrCpy (char*,int,char*) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 int VLAN_ADAPTER_NAME ;
 int VLAN_ADAPTER_NAME_OLD ;

void CiSetVLanToDefault(CLIENT *c)
{
 char device_name[MAX_SIZE];

 if (c == ((void*)0))
 {
  return;
 }
 {
  UNIX_VLAN *v;

  LockList(c->UnixVLanList);

  if (LIST_NUM(c->UnixVLanList) != 1)
  {
   UnlockList(c->UnixVLanList);
   return;
  }
  v = LIST_DATA(c->UnixVLanList, 0);
  StrCpy(device_name, sizeof(device_name), v->Name);

  UnlockList(c->UnixVLanList);
 }


 {
  UINT i;
  LockList(c->AccountList);
  {
   for (i = 0;i < LIST_NUM(c->AccountList);i++)
   {
    ACCOUNT *a = LIST_DATA(c->AccountList, i);

    Lock(a->lock);
    {
     if (CiIsVLan(c, a->ClientOption->DeviceName) == 0)
     {
      StrCpy(a->ClientOption->DeviceName, sizeof(a->ClientOption->DeviceName),
       device_name);
     }
    }
    Unlock(a->lock);
   }
  }
  UnlockList(c->AccountList);
 }
}
