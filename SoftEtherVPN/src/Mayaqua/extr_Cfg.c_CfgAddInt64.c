
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int ITEM ;
typedef int FOLDER ;


 int * CfgCreateItem (int *,char*,int ,int *,int) ;
 int ITEM_TYPE_INT64 ;

ITEM *CfgAddInt64(FOLDER *f, char *name, UINT64 i)
{

 if (f == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }
 return CfgCreateItem(f, name, ITEM_TYPE_INT64, &i, sizeof(UINT64));
}
