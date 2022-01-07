
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int ref; } ;
typedef int LIST ;
typedef TYPE_1__ CANCEL ;


 int Add (int *,TYPE_1__*) ;
 int AddRef (int ) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

void AddCancelList(LIST *o, CANCEL *c)
{
 UINT i;

 if (o == ((void*)0) || c == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  CANCEL *t = LIST_DATA(o, i);
  if (t == c)
  {
   return;
  }
 }

 AddRef(c->ref);
 Add(o, c);
}
