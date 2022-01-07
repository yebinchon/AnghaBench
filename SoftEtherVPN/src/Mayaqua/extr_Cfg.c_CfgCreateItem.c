
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int Items; } ;
struct TYPE_8__ {TYPE_2__* Parent; scalar_t__ size; scalar_t__ Type; void* Name; int Buf; } ;
typedef TYPE_1__ ITEM ;
typedef TYPE_2__ FOLDER ;


 int Copy (int ,void*,scalar_t__) ;
 int Free (void*) ;
 int Insert (int ,TYPE_1__*) ;
 int Malloc (scalar_t__) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int StrCpy (void*,int ,char*) ;
 scalar_t__ StrLen (char*) ;
 void* ZeroMalloc (scalar_t__) ;

ITEM *CfgCreateItem(FOLDER *parent, char *name, UINT type, void *buf, UINT size)
{
 UINT name_size;
 ITEM *t;




 if (parent == ((void*)0) || name == ((void*)0) || type == 0 || buf == ((void*)0))
 {
  return ((void*)0);
 }

 name_size = StrLen(name) + 1;
 t = ZeroMalloc(sizeof(ITEM));
 t->Buf = Malloc(size);
 Copy(t->Buf, buf, size);
 t->Name = ZeroMalloc(name_size);
 StrCpy(t->Name, 0, name);
 t->Type = type;
 t->size = size;
 t->Parent = parent;


 Insert(parent->Items, t);

 return t;
}
