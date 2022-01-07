
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ Id; } ;
typedef int LIST ;
typedef TYPE_1__ LANGLIST ;


 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

LANGLIST *GetLangById(LIST *o, UINT id)
{
 UINT i;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  LANGLIST *e = LIST_DATA(o, i);

  if (e->Id == id)
  {
   return e;
  }
 }

 return ((void*)0);
}
