
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;
typedef int AC ;


 int Clone (int *,int) ;
 int Insert (int *,int ) ;
 scalar_t__ LIST_NUM (int *) ;
 scalar_t__ MAX_HUB_ACS ;
 int NormalizeAcList (int *) ;

void AddAc(LIST *o, AC *ac)
{

 if (o == ((void*)0) || ac == ((void*)0))
 {
  return;
 }

 if (LIST_NUM(o) < MAX_HUB_ACS)
 {
  Insert(o, Clone(ac, sizeof(AC)));

  NormalizeAcList(o);
 }
}
