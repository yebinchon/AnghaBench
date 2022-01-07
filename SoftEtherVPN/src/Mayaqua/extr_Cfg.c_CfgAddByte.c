
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int ITEM ;
typedef int FOLDER ;


 int * CfgCreateItem (int *,char*,int ,void*,int ) ;
 int ITEM_TYPE_BYTE ;

ITEM *CfgAddByte(FOLDER *f, char *name, void *buf, UINT size)
{

 if (f == ((void*)0) || name == ((void*)0) || buf == ((void*)0))
 {
  return ((void*)0);
 }
 return CfgCreateItem(f, name, ITEM_TYPE_BYTE, buf, size);
}
