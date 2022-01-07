
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_7__ {scalar_t__ Param1; } ;
typedef TYPE_1__ LIST ;


 int DeleteAllUserListCache (TYPE_1__*) ;
 int IsUserMatchInUserList (TYPE_1__*,char*,scalar_t__) ;
 int LockList (TYPE_1__*) ;
 scalar_t__ Tick64 () ;
 int UnlockList (TYPE_1__*) ;

bool IsUserMatchInUserListWithCacheExpires(LIST *o, char *filename, UINT64 user_hash, UINT64 lifetime)
{
 bool ret = 0;
 UINT64 now = Tick64();

 if (o == ((void*)0) || filename == ((void*)0) || user_hash == 0)
 {
  return 0;
 }

 LockList(o);
 {
  if (lifetime != 0)
  {
   if (o->Param1 == 0 || (now >= (o->Param1 + lifetime)))
   {
    DeleteAllUserListCache(o);

    o->Param1 = now;
   }
  }

  ret = IsUserMatchInUserList(o, filename, user_hash);
 }
 UnlockList(o);

 return ret;
}
