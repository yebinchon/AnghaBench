
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int AutoDeleteCheckDiskFreeSpaceMin; int HashedPassword; int CfgRw; int Port; } ;
typedef int FOLDER ;
typedef TYPE_1__ EL ;


 int CfgDeleteFolder (int *) ;
 int DISK_FREE_SPACE_DEFAULT ;
 int EL_ADMIN_PORT ;
 int EL_CONFIG_FILENAME ;
 int ElLoadConfigFromFolder (TYPE_1__*,int *) ;
 int NewCfgRw (int **,int ) ;
 int Sha0 (int ,char*,int ) ;
 int StrLen (char*) ;

bool ElLoadConfig(EL *e)
{
 FOLDER *root;
 bool ret = 0;

 if (e == ((void*)0))
 {
  return 0;
 }

 e->Port = EL_ADMIN_PORT;

 e->CfgRw = NewCfgRw(&root, EL_CONFIG_FILENAME);

 if (root != ((void*)0))
 {
  ElLoadConfigFromFolder(e, root);

  CfgDeleteFolder(root);
 }
 else
 {
  char *pass = "";
  Sha0(e->HashedPassword, pass, StrLen(pass));
  e->AutoDeleteCheckDiskFreeSpaceMin = DISK_FREE_SPACE_DEFAULT;
 }

 return ret;
}
