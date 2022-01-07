
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* Cedar; int CfgRw; } ;
struct TYPE_5__ {int Bridge; } ;
typedef TYPE_2__ SERVER ;
typedef int FOLDER ;


 char* BRIDGE_CONFIG_FILE_NAME ;
 int BRIDGE_CONFIG_TEMPLATE_NAME ;
 int CfgDeleteFolder (int *) ;
 int NewCfgRwEx2A (int **,char*,int,int ) ;
 char* SERVER_CONFIG_FILE_NAME ;
 int SERVER_CONFIG_TEMPLATE_NAME ;
 int SiLoadConfigurationFileMain (TYPE_2__*,int *) ;
 int server_reset_setting ;

bool SiLoadConfigurationFile(SERVER *s)
{

 bool ret = 0;
 FOLDER *root;
 char *server_config_filename = SERVER_CONFIG_FILE_NAME;
 if (s == ((void*)0))
 {
  return 0;
 }


 s->CfgRw = NewCfgRwEx2A(&root,
  s->Cedar->Bridge == 0 ? server_config_filename : BRIDGE_CONFIG_FILE_NAME, 0,
  s->Cedar->Bridge == 0 ? SERVER_CONFIG_TEMPLATE_NAME : BRIDGE_CONFIG_TEMPLATE_NAME);

 if (server_reset_setting)
 {
  CfgDeleteFolder(root);
  root = ((void*)0);
  server_reset_setting = 0;
 }

 if (root == ((void*)0))
 {
  return 0;
 }

 ret = SiLoadConfigurationFileMain(s, root);

 CfgDeleteFolder(root);

 return ret;
}
