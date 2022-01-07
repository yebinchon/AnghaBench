
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int * NonSslList; } ;
struct TYPE_8__ {scalar_t__ EntryExpires; } ;
typedef TYPE_1__ NON_SSL ;
typedef int LIST ;
typedef TYPE_2__ CEDAR ;


 int Add (int *,TYPE_1__*) ;
 int Delete (int *,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 scalar_t__ Tick64 () ;

void DeleteOldNoSsl(CEDAR *c)
{
 UINT i;
 LIST *o;

 if (c == ((void*)0))
 {
  return;
 }

 o = NewListFast(((void*)0));

 for (i = 0;i < LIST_NUM(c->NonSslList);i++)
 {
  NON_SSL *n = LIST_DATA(c->NonSslList, i);

  if (n->EntryExpires <= Tick64())
  {
   Add(o, n);
  }
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  NON_SSL *n = LIST_DATA(o, i);

  Delete(c->NonSslList, n);
  Free(n);
 }

 ReleaseList(o);
}
