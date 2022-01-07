
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_12__ {scalar_t__ Expire; } ;
struct TYPE_11__ {int * IpCombine; TYPE_1__* v; } ;
struct TYPE_10__ {scalar_t__ Now; } ;
typedef TYPE_2__ NATIVE_NAT ;
typedef int LIST ;
typedef TYPE_3__ IP_COMBINE ;


 int Add (int *,TYPE_3__*) ;
 int Delete (int *,TYPE_3__*) ;
 TYPE_3__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int NnFreeIpCombine (TYPE_2__*,TYPE_3__*) ;
 int ReleaseList (int *) ;

void NnPollingIpCombine(NATIVE_NAT *t)
{
 LIST *o;
 UINT i;

 if (t == ((void*)0))
 {
  return;
 }


 o = ((void*)0);
 for (i = 0;i < LIST_NUM(t->IpCombine);i++)
 {
  IP_COMBINE *c = LIST_DATA(t->IpCombine, i);

  if (c->Expire < t->v->Now)
  {
   if (o == ((void*)0))
   {
    o = NewListFast(((void*)0));
   }
   Add(o, c);
  }
 }

 if (o != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(o);i++)
  {
   IP_COMBINE *c = LIST_DATA(o, i);


   Delete(t->IpCombine, c);


   NnFreeIpCombine(t, c);
  }
  ReleaseList(o);
 }
}
