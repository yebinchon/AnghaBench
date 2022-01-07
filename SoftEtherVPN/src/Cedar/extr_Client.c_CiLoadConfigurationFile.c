
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int path ;
struct TYPE_4__ {void* CfgRw; } ;
typedef int FOLDER ;
typedef TYPE_1__ CLIENT ;


 char* CLIENT_CONFIG_FILE_NAME ;
 int CfgDeleteFolder (int *) ;
 scalar_t__ CiLoadConfigFilePathFromIni (char*,int) ;
 int CiReadSettingFromCfg (TYPE_1__*,int *) ;
 int MAX_SIZE ;
 void* NewCfgRw (int **,char*) ;

bool CiLoadConfigurationFile(CLIENT *c)
{
 bool ret;
 FOLDER *root;
 char path[MAX_SIZE];

 if (c == ((void*)0))
 {
  return 0;
 }


 if (CiLoadConfigFilePathFromIni(path, sizeof(path)))
 {
  c->CfgRw = NewCfgRw(&root, path);
 }
 else
 {
  c->CfgRw = NewCfgRw(&root, CLIENT_CONFIG_FILE_NAME);
 }

 if (root == ((void*)0))
 {
  return 0;
 }

 ret = CiReadSettingFromCfg(c, root);

 CfgDeleteFolder(root);

 return ret;
}
