
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {TYPE_1__* Cedar; } ;
struct TYPE_8__ {scalar_t__ Key; int * x; } ;
struct TYPE_7__ {int CaList; } ;
typedef TYPE_2__ RPC_GET_CA ;
typedef TYPE_3__ CLIENT ;


 int CiSetError (TYPE_3__*,int ) ;
 int * CloneX (int *) ;
 int ERR_OBJECT_NOT_FOUND ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 scalar_t__ POINTER_TO_KEY (int *) ;
 int UnlockList (int ) ;

bool CtGetCa(CLIENT *c, RPC_GET_CA *get)
{
 bool ret = 1;
 X *cert = ((void*)0);

 if (c == ((void*)0) || get == ((void*)0))
 {
  return 0;
 }

 LockList(c->Cedar->CaList);
 {
  UINT i;

  for (i = 0;i < LIST_NUM(c->Cedar->CaList);i++)
  {
   X *x = LIST_DATA(c->Cedar->CaList, i);

   if (POINTER_TO_KEY(x) == get->Key)
   {
    cert = CloneX(x);
    break;
   }
  }
 }
 UnlockList(c->Cedar->CaList);

 if (cert == ((void*)0))
 {

  ret = 0;
  CiSetError(c, ERR_OBJECT_NOT_FOUND);
 }
 else
 {
  ret = 1;
  get->x = cert;
 }

 return ret;
}
