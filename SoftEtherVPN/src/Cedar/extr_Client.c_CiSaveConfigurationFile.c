
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CfgRw; scalar_t__ NoSaveConfig; } ;
typedef int FOLDER ;
typedef TYPE_1__ CLIENT ;


 int * CfgCreateFolder (int *,int ) ;
 int CfgDeleteFolder (int *) ;
 int CiWriteSettingToCfg (TYPE_1__*,int *) ;
 int SaveCfgRw (int ,int *) ;
 int TAG_ROOT ;

void CiSaveConfigurationFile(CLIENT *c)
{
 FOLDER *root;

 if (c == ((void*)0))
 {
  return;
 }


 if(c->NoSaveConfig)
 {
  return;
 }

 root = CfgCreateFolder(((void*)0), TAG_ROOT);
 CiWriteSettingToCfg(c, root);

 SaveCfgRw(c->CfgRw, root);

 CfgDeleteFolder(root);
}
