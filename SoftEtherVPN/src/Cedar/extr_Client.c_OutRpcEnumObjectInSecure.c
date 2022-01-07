
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {size_t NumItem; int * ItemType; int * ItemName; int hWnd; } ;
typedef TYPE_1__ RPC_ENUM_OBJECT_IN_SECURE ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddNum (int *,char*,size_t) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumObjectInSecure(PACK *p, RPC_ENUM_OBJECT_IN_SECURE *e)
{
 UINT i;

 if (e == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddNum(p, "NumItem", e->NumItem);
 PackAddInt(p, "hWnd", e->hWnd);

 PackSetCurrentJsonGroupName(p, "ObjectList");
 for (i = 0;i < e->NumItem;i++)
 {
  PackAddStrEx(p, "ItemName", e->ItemName[i], i, e->NumItem);
  PackAddIntEx(p, "ItemType", e->ItemType[i], i, e->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
