
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;
typedef int CANCEL ;


 int Cancel (int *) ;
 int DeleteAll (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseCancel (int *) ;

void CancelList(LIST *o)
{
 UINT i;

 if (o == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  CANCEL *c = LIST_DATA(o, i);
  Cancel(c);
  ReleaseCancel(c);
 }

 DeleteAll(o);
}
