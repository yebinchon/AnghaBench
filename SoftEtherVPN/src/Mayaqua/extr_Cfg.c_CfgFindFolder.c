
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Name; int Folders; } ;
typedef TYPE_1__ FOLDER ;


 int Free (int ) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int StrCpy (int ,int ,char*) ;
 scalar_t__ StrLen (char*) ;
 int ZeroMalloc (scalar_t__) ;

FOLDER *CfgFindFolder(FOLDER *parent, char *name)
{
 FOLDER *f, ff;

 if (parent == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 ff.Name = ZeroMalloc(StrLen(name) + 1);
 StrCpy(ff.Name, 0, name);
 f = Search(parent->Folders, &ff);
 Free(ff.Name);

 return f;
}
