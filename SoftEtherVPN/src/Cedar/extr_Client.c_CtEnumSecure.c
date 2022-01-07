
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int NumItem; TYPE_2__** Items; } ;
struct TYPE_7__ {int Type; int Manufacturer; int DeviceName; int DeviceId; } ;
struct TYPE_6__ {int Type; int Manufacturer; int DeviceName; int Id; } ;
typedef TYPE_1__ SECURE_DEVICE ;
typedef TYPE_2__ RPC_CLIENT_ENUM_SECURE_ITEM ;
typedef TYPE_3__ RPC_CLIENT_ENUM_SECURE ;
typedef int LIST ;
typedef int CLIENT ;


 int * GetSecureDeviceList () ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int StrCpy (int ,int,int ) ;
 void* ZeroMalloc (int) ;

bool CtEnumSecure(CLIENT *c, RPC_CLIENT_ENUM_SECURE *e)
{
 LIST *o;
 UINT i;

 if (c == ((void*)0) || e == ((void*)0))
 {
  return 0;
 }

 o = GetSecureDeviceList();

 e->NumItem = LIST_NUM(o);
 e->Items = ZeroMalloc(sizeof(RPC_CLIENT_ENUM_SECURE_ITEM *) * e->NumItem);

 for (i = 0;i < LIST_NUM(o);i++)
 {
  RPC_CLIENT_ENUM_SECURE_ITEM *item = ZeroMalloc(sizeof(RPC_CLIENT_ENUM_SECURE_ITEM));
  SECURE_DEVICE *s = LIST_DATA(o, i);

  item->DeviceId = s->Id;
  StrCpy(item->DeviceName, sizeof(item->DeviceName), s->DeviceName);
  StrCpy(item->Manufacturer, sizeof(item->Manufacturer), s->Manufacturer);
  item->Type = s->Type;

  e->Items[i] = item;
 }

 return 1;
}
