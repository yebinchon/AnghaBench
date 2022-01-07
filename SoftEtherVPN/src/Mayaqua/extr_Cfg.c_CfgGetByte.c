
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ Type; scalar_t__ size; int Buf; } ;
typedef TYPE_1__ ITEM ;
typedef int FOLDER ;


 TYPE_1__* CfgFindItem (int *,char*) ;
 int Copy (void*,int ,scalar_t__) ;
 scalar_t__ ITEM_TYPE_BYTE ;

UINT CfgGetByte(FOLDER *f, char *name, void *buf, UINT size)
{
 ITEM *t;

 if (f == ((void*)0) || name == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }

 t = CfgFindItem(f, name);
 if (t == ((void*)0))
 {
  return 0;
 }
 if (t->Type != ITEM_TYPE_BYTE)
 {
  return 0;
 }
 if (t->size <= size)
 {
  Copy(buf, t->Buf, t->size);
  return t->size;
 }
 else
 {
  Copy(buf, t->Buf, size);
  return t->size;
 }
}
