
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int Traffic; int * Policy; void* UpdatedTime; void* CreatedTime; void* AuthData; scalar_t__ AuthType; int * Group; int * GroupName; void* Note; void* RealName; int Name; int ref; int lock; } ;
typedef TYPE_1__ USER ;
typedef scalar_t__ UINT ;


 scalar_t__ AUTHTYPE_ANONYMOUS ;
 int CopyStr (char*) ;
 void* CopyUniStr (int *) ;
 int NewLock () ;
 int NewRef () ;
 int NewTraffic () ;
 void* SystemTime64 () ;
 TYPE_1__* ZeroMalloc (int) ;

USER *NewUser(char *name, wchar_t *realname, wchar_t *note, UINT authtype, void *authdata)
{
 USER *u;

 if (name == ((void*)0) || realname == ((void*)0) || note == ((void*)0))
 {
  return ((void*)0);
 }
 if (authtype != AUTHTYPE_ANONYMOUS && authdata == ((void*)0))
 {
  return ((void*)0);
 }

 u = ZeroMalloc(sizeof(USER));
 u->lock = NewLock();
 u->ref = NewRef();
 u->Name = CopyStr(name);
 u->RealName = CopyUniStr(realname);
 u->Note = CopyUniStr(note);
 u->GroupName = ((void*)0);
 u->Group = ((void*)0);
 u->AuthType = authtype;
 u->AuthData = authdata;
 u->CreatedTime = SystemTime64();
 u->UpdatedTime = SystemTime64();

 u->Policy = ((void*)0);
 u->Traffic = NewTraffic();

 return u;
}
