
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int Items; } ;
struct TYPE_7__ {int Name; } ;
typedef TYPE_1__ ITEM ;
typedef TYPE_2__ FOLDER ;


 int Free (int ) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int StrCpy (int ,int ,char*) ;
 scalar_t__ StrLen (char*) ;
 int ZeroMalloc (scalar_t__) ;

ITEM *CfgFindItem(FOLDER *parent, char *name)
{
 ITEM *t, tt;

 if (parent == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 tt.Name = ZeroMalloc(StrLen(name) + 1);
 StrCpy(tt.Name, 0, name);
 t = Search(parent->Items, &tt);
 Free(tt.Name);

 return t;
}
