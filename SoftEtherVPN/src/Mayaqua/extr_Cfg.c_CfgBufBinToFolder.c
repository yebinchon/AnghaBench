
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * Parent; int Folders; } ;
typedef TYPE_1__ FOLDER ;
typedef int BUF ;


 TYPE_1__* CfgCreateFolder (int *,char*) ;
 int CfgDeleteFolder (TYPE_1__*) ;
 TYPE_1__* CfgGetFolder (TYPE_1__*,int ) ;
 int CfgReadNextFolderBin (int *,TYPE_1__*) ;
 int Delete (int ,TYPE_1__*) ;
 int TAG_ROOT ;

FOLDER *CfgBufBinToFolder(BUF *b)
{
 FOLDER *f, *c;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }


 c = CfgCreateFolder(((void*)0), "tmp");


 CfgReadNextFolderBin(b, c);


 f = CfgGetFolder(c, TAG_ROOT);
 if (f == ((void*)0))
 {

  CfgDeleteFolder(c);
  return ((void*)0);
 }

 Delete(c->Folders, f);
 f->Parent = ((void*)0);

 CfgDeleteFolder(c);

 return f;
}
