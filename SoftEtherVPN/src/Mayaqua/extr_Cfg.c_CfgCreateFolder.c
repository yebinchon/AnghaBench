
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {void* Folders; struct TYPE_7__* Parent; void* Name; void* Items; } ;
typedef TYPE_1__ FOLDER ;


 int CmpFolderName ;
 int CmpItemName ;
 int Free (void*) ;
 int Insert (void*,TYPE_1__*) ;
 void* NewListFast (int ) ;
 TYPE_1__* Search (void*,TYPE_1__*) ;
 int StrCpy (void*,int ,char*) ;
 int StrLen (char*) ;
 void* ZeroMalloc (int) ;

FOLDER *CfgCreateFolder(FOLDER *parent, char *name)
{
 UINT size;
 FOLDER *f;

 if (name == ((void*)0))
 {
  return ((void*)0);
 }

 size = StrLen(name) + 1;
 f = ZeroMalloc(sizeof(FOLDER));
 f->Items = NewListFast(CmpItemName);
 f->Folders = NewListFast(CmpFolderName);
 f->Name = ZeroMalloc(size);
 StrCpy(f->Name, 0, name);
 f->Parent = parent;


 if (f->Parent != ((void*)0))
 {
  Insert(f->Parent->Folders, f);
 }
 return f;
}
