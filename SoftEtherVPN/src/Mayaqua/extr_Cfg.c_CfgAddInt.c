
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int ITEM ;
typedef int FOLDER ;


 int * CfgCreateItem (int *,char*,int ,int *,int) ;
 int ITEM_TYPE_INT ;

ITEM *CfgAddInt(FOLDER *f, char *name, UINT i)
{

 if (f == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }
 return CfgCreateItem(f, name, ITEM_TYPE_INT, &i, sizeof(UINT));
}
