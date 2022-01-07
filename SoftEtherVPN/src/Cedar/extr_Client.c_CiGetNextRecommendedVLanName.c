
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmp ;
typedef int t ;
typedef int UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__** Items; } ;
struct TYPE_6__ {int DeviceName; } ;
typedef TYPE_2__ RPC_CLIENT_ENUM_VLAN ;
typedef int REMOTE_CLIENT ;


 scalar_t__ CcEnumVLan (int *,TYPE_2__*) ;
 int CiFreeClientEnumVLan (TYPE_2__*) ;
 int CiGenerateVLanRegulatedName (char*,int,int) ;
 scalar_t__ ERR_NO_ERROR ;
 int MAX_SIZE ;
 scalar_t__ StrCmpi (int ,char*) ;
 int StrCpy (char*,int,char*) ;
 int Zero (TYPE_2__*,int) ;

bool CiGetNextRecommendedVLanName(REMOTE_CLIENT *r, char *name, UINT size)
{
 RPC_CLIENT_ENUM_VLAN t;
 UINT i;
 bool b;
 UINT j;
 bool ok = 0;

 if (r == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 Zero(&t, sizeof(t));

 if (CcEnumVLan(r, &t) != ERR_NO_ERROR)
 {
  return 0;
 }

 for (i = 1;i < 128;i++)
 {
  char tmp[MAX_SIZE];

  CiGenerateVLanRegulatedName(tmp, sizeof(tmp), i);

  b = 0;

  for (j = 0;j < t.NumItem;j++)
  {
   if (StrCmpi(t.Items[j]->DeviceName, tmp) == 0)
   {
    b = 1;
    break;
   }
  }

  if (b == 0)
  {
   ok = 1;

   StrCpy(name, size, tmp);
   break;
  }
 }

 if (ok)
 {
  CiFreeClientEnumVLan(&t);
 }

 return 1;
}
