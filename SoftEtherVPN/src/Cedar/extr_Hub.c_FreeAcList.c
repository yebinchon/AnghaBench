
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;
typedef int AC ;


 int Free (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

void FreeAcList(LIST *o)
{
 UINT i;

 if (o == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  AC *ac = LIST_DATA(o, i);

  Free(ac);
 }

 ReleaseList(o);
}
