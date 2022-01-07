
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int UserHashList; } ;
typedef TYPE_1__ USERLIST ;
typedef scalar_t__ UINT64 ;
typedef int LIST ;


 TYPE_1__* FindUserList (int *,char*) ;
 int IsInt64InList (int ,scalar_t__) ;
 TYPE_1__* LoadUserList (int *,char*) ;
 int LockList (int *) ;
 int UnlockList (int *) ;

bool IsUserMatchInUserList(LIST *o, char *filename, UINT64 user_hash)
{
 USERLIST *u;
 bool ret = 0;

 if (o == ((void*)0) || filename == ((void*)0) || user_hash == 0)
 {
  return 0;
 }

 LockList(o);
 {
  u = FindUserList(o, filename);
  if (u == ((void*)0))
  {
   u = LoadUserList(o, filename);
  }

  if (u != ((void*)0))
  {
   ret = IsInt64InList(u->UserHashList, user_hash);
  }
 }
 UnlockList(o);

 return ret;
}
