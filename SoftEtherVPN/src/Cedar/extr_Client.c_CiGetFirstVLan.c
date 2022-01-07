
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int t ;
typedef size_t UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__** Items; } ;
struct TYPE_6__ {char* DeviceName; scalar_t__ Enabled; } ;
typedef TYPE_2__ RPC_CLIENT_ENUM_VLAN ;
typedef int CLIENT ;


 int CiFreeClientEnumVLan (TYPE_2__*) ;
 char* CopyStr (char*) ;
 int CtEnumVLan (int *,TYPE_2__*) ;
 int Zero (TYPE_2__*,int) ;

char *CiGetFirstVLan(CLIENT *c)
{
 char *ret = ((void*)0);
 RPC_CLIENT_ENUM_VLAN t;

 if (c == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&t, sizeof(t));
 if (CtEnumVLan(c, &t) == 0)
 {
  return ((void*)0);
 }

 if (t.NumItem >= 1)
 {
  UINT i;
  char *tmp = t.Items[0]->DeviceName;

  for (i = 0;i < t.NumItem;i++)
  {
   if (t.Items[i]->Enabled)
   {
    tmp = t.Items[i]->DeviceName;
   }
  }

  ret = CopyStr(tmp);
 }

 CiFreeClientEnumVLan(&t);

 return ret;
}
