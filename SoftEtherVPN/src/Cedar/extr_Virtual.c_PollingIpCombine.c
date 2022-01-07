
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ Now; int * IpCombine; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {scalar_t__ Expire; } ;
typedef int LIST ;
typedef TYPE_2__ IP_COMBINE ;


 int Add (int *,TYPE_2__*) ;
 int Delete (int *,TYPE_2__*) ;
 int FreeIpCombine (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;

void PollingIpCombine(VH *v)
{
 LIST *o;
 UINT i;

 if (v == ((void*)0))
 {
  return;
 }


 o = ((void*)0);
 for (i = 0;i < LIST_NUM(v->IpCombine);i++)
 {
  IP_COMBINE *c = LIST_DATA(v->IpCombine, i);

  if (c->Expire < v->Now)
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


   Delete(v->IpCombine, c);


   FreeIpCombine(v, c);
  }
  ReleaseList(o);
 }
}
