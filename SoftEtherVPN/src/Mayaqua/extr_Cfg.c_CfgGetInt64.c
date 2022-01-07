
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_3__ {scalar_t__ Type; int size; scalar_t__ Buf; } ;
typedef TYPE_1__ ITEM ;
typedef int FOLDER ;


 TYPE_1__* CfgFindItem (int *,char*) ;
 scalar_t__ ITEM_TYPE_INT64 ;

UINT64 CfgGetInt64(FOLDER *f, char *name)
{
 ITEM *t;
 UINT64 *ret;

 if (f == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 t = CfgFindItem(f, name);
 if (t == ((void*)0))
 {
  return 0;
 }
 if (t->Type != ITEM_TYPE_INT64)
 {
  return 0;
 }
 if (t->size != sizeof(UINT64))
 {
  return 0;
 }

 ret = (UINT64 *)t->Buf;
 return *ret;
}
