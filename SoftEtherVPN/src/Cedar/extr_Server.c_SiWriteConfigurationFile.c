
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int SaveCfgLock; int ConfigRevision; scalar_t__ BackupConfigOnlyWhenModified; int * CfgRw; scalar_t__ NoMoreSave; } ;
typedef TYPE_1__ SERVER ;
typedef int FOLDER ;


 int CfgDeleteFolder (int *) ;
 int Debug (char*) ;
 int INFINITE ;
 int Lock (int ) ;
 int SaveCfgRwEx (int *,int *,int ) ;
 int * SiWriteConfigurationToCfg (TYPE_1__*) ;
 int Unlock (int ) ;

UINT SiWriteConfigurationFile(SERVER *s)
{
 UINT ret;

 if (s == ((void*)0))
 {
  return 0;
 }

 if (s->CfgRw == ((void*)0))
 {
  return 0;
 }

 if (s->NoMoreSave)
 {
  return 0;
 }

 Lock(s->SaveCfgLock);
 {
  FOLDER *f;

  Debug("save: SiWriteConfigurationToCfg() start.\n");
  f = SiWriteConfigurationToCfg(s);
  Debug("save: SiWriteConfigurationToCfg() finished.\n");

  Debug("save: SaveCfgRw() start.\n");
  ret = SaveCfgRwEx(s->CfgRw, f, s->BackupConfigOnlyWhenModified ? s->ConfigRevision : INFINITE);
  Debug("save: SaveCfgRw() finished.\n");

  Debug("save: CfgDeleteFolder() start.\n");
  CfgDeleteFolder(f);
  Debug("save: CfgDeleteFolder() finished.\n");
 }
 Unlock(s->SaveCfgLock);

 return ret;
}
