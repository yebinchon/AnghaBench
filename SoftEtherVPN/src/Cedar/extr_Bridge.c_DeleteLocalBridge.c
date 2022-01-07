
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int HubList; int LocalBridgeList; } ;
struct TYPE_7__ {int * Bridge; int DeviceName; int HubName; } ;
typedef TYPE_1__ LOCALBRIDGE ;
typedef TYPE_2__ CEDAR ;


 int BrFreeBridge (int *) ;
 int Delete (int ,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int UnlockList (int ) ;

bool DeleteLocalBridge(CEDAR *c, char *hubname, char *devicename)
{
 bool ret = 0;

 if (c == ((void*)0) || hubname == ((void*)0) || devicename == ((void*)0))
 {
  return 0;
 }

 LockList(c->HubList);
 {
  LockList(c->LocalBridgeList);
  {
   UINT i;

   for (i = 0;i < LIST_NUM(c->LocalBridgeList);i++)
   {
    LOCALBRIDGE *br = LIST_DATA(c->LocalBridgeList, i);

    if (StrCmpi(br->HubName, hubname) == 0)
    {
     if (StrCmpi(br->DeviceName, devicename) == 0)
     {
      if (br->Bridge != ((void*)0))
      {
       BrFreeBridge(br->Bridge);
       br->Bridge = ((void*)0);
      }

      Delete(c->LocalBridgeList, br);
      Free(br);

      ret = 1;
      break;
     }
    }
   }
  }
  UnlockList(c->LocalBridgeList);
 }
 UnlockList(c->HubList);

 return ret;
}
