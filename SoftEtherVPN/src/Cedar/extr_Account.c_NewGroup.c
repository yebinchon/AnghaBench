
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int Traffic; int * Policy; void* Note; void* RealName; int Name; int ref; int lock; } ;
typedef TYPE_1__ USERGROUP ;


 int CopyStr (char*) ;
 void* CopyUniStr (int *) ;
 int NewLock () ;
 int NewRef () ;
 int NewTraffic () ;
 TYPE_1__* ZeroMalloc (int) ;

USERGROUP *NewGroup(char *name, wchar_t *realname, wchar_t *note)
{
 USERGROUP *g;

 if (name == ((void*)0) || realname == ((void*)0) || note == ((void*)0))
 {
  return ((void*)0);
 }

 g = ZeroMalloc(sizeof(USERGROUP));
 g->lock = NewLock();
 g->ref = NewRef();
 g->Name = CopyStr(name);
 g->RealName = CopyUniStr(realname);
 g->Note = CopyUniStr(note);
 g->Policy = ((void*)0);
 g->Traffic = NewTraffic();

 return g;
}
