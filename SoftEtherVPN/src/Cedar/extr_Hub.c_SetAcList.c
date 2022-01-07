
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;
typedef int AC ;


 int AddAc (int *,int *) ;
 int DelAllAc (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

void SetAcList(LIST *o, LIST *src)
{
 UINT i;

 if (o == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 DelAllAc(o);

 for (i = 0;i < LIST_NUM(src);i++)
 {
  AC *ac = LIST_DATA(src, i);

  AddAc(o, ac);
 }
}
