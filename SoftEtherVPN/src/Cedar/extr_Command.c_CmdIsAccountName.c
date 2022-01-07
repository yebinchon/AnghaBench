
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef size_t UINT ;
struct TYPE_6__ {size_t NumItem; TYPE_1__** Items; } ;
struct TYPE_5__ {int AccountName; } ;
typedef TYPE_2__ RPC_CLIENT_ENUM_ACCOUNT ;
typedef int REMOTE_CLIENT ;


 scalar_t__ CcEnumAccount (int *,TYPE_2__*) ;
 int CiFreeClientEnumAccount (TYPE_2__*) ;
 scalar_t__ ERR_NO_ERROR ;
 int MAX_SIZE ;
 scalar_t__ UniStrCmpi (int ,int *) ;
 int UniStrCpy (int *,int,int *) ;
 int UniTrim (int *) ;

bool CmdIsAccountName(REMOTE_CLIENT *r, wchar_t *name)
{
 UINT i;
 RPC_CLIENT_ENUM_ACCOUNT t;
 wchar_t tmp[MAX_SIZE];
 bool b = 0;

 if (r == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 if (CcEnumAccount(r, &t) != ERR_NO_ERROR)
 {
  return 0;
 }

 UniStrCpy(tmp, sizeof(tmp), name);
 UniTrim(tmp);

 for (i = 0;i < t.NumItem;i++)
 {
  if (UniStrCmpi(t.Items[i]->AccountName, tmp) == 0)
  {
   b = 1;
   break;
  }
 }

 CiFreeClientEnumAccount(&t);

 return b;
}
