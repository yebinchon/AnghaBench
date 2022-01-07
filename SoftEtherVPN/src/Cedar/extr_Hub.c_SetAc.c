
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;
typedef int AC ;


 int AddAc (int *,int *) ;
 scalar_t__ DelAc (int *,scalar_t__) ;

void SetAc(LIST *o, UINT id, AC *ac)
{

 if (o == ((void*)0) || id == 0 || ac == ((void*)0))
 {
  return;
 }

 if (DelAc(o, id))
 {
  AddAc(o, ac);
 }
}
