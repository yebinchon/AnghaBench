
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Name; } ;
typedef TYPE_1__ UNIX_VLAN ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {int UnixVLanList; } ;
typedef int FOLDER ;
typedef TYPE_2__ CLIENT ;


 int CfgCreateFolder (int *,int ) ;
 int CiWriteVLan (TYPE_2__*,int ,TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int UnlockList (int ) ;

void CiWriteVLanList(CLIENT *c, FOLDER *f)
{

 if (c == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 LockList(c->UnixVLanList);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(c->UnixVLanList);i++)
  {
   UNIX_VLAN *v = LIST_DATA(c->UnixVLanList, i);
   CiWriteVLan(c, CfgCreateFolder(f, v->Name), v);
  }
 }
 UnlockList(c->UnixVLanList);
}
