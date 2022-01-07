
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CfgRw; } ;
typedef int FOLDER ;
typedef TYPE_1__ EL ;


 int * CfgCreateFolder (int *,int ) ;
 int CfgDeleteFolder (int *) ;
 int ElSaveConfigToFolder (TYPE_1__*,int *) ;
 int SaveCfgRw (int ,int *) ;
 int TAG_ROOT ;

void ElSaveConfig(EL *e)
{
 FOLDER *root;

 if (e == ((void*)0))
 {
  return;
 }

 root = CfgCreateFolder(((void*)0), TAG_ROOT);

 ElSaveConfigToFolder(e, root);

 SaveCfgRw(e->CfgRw, root);

 CfgDeleteFolder(root);
}
