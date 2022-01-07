
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ExpireDate; } ;
typedef TYPE_1__ WU_CONTEXT ;
struct TYPE_10__ {int * Contexts; } ;
typedef TYPE_2__ WEBUI ;
typedef scalar_t__ UINT ;
struct TYPE_11__ {scalar_t__ Value; struct TYPE_11__* Name; } ;
typedef TYPE_3__ STRMAP_ENTRY ;
typedef int LIST ;


 int Add (int *,TYPE_3__*) ;
 int Delete (int *,TYPE_3__*) ;
 int Free (TYPE_3__*) ;
 TYPE_3__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int * NewList (int *) ;
 int ReleaseList (int *) ;
 scalar_t__ Tick64 () ;
 int UnlockList (int *) ;
 int WuFreeContext (scalar_t__) ;

__attribute__((used)) static void WuExpireSessionKey(WEBUI *wu)
{
 LIST *Expired = NewList(((void*)0));
 UINT i;

 LockList(wu->Contexts);

 for(i=0; i<LIST_NUM(wu->Contexts); i++)
 {
  STRMAP_ENTRY *entry = (STRMAP_ENTRY*)LIST_DATA(wu->Contexts, i);
  WU_CONTEXT *context = (WU_CONTEXT*)entry->Value;
  if(context->ExpireDate < Tick64())
  {
   Add(Expired, entry);
  }
 }

 for(i=0; i<LIST_NUM(Expired); i++)
 {
  STRMAP_ENTRY *entry = LIST_DATA(Expired, i);
  Delete(wu->Contexts, entry);
  Free(entry->Name);
  WuFreeContext(entry->Value);
  Free(entry);
 }
 ReleaseList(Expired);

 UnlockList(wu->Contexts);
}
