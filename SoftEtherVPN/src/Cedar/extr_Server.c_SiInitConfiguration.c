
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_16__ {int Bridge; } ;
struct TYPE_15__ {int AutoSaveConfigSpan; int BackupConfigOnlyWhenModified; int NoLinuxArpFilter; int AutoSaveConfigSpanSaved; scalar_t__ ServerType; int SaveThread; int SaveHaltEvent; TYPE_6__* Cedar; int EnableVpnAzure; int AzureClient; int * DDnsClient; scalar_t__ DisableDosProtection; int DontBackupConfig; TYPE_1__* CfgRw; int OpenVpnServerUdp; int IPsecServer; } ;
struct TYPE_14__ {int DontBackup; } ;
struct TYPE_13__ {scalar_t__ OsType; } ;
typedef TYPE_2__ SERVER ;


 int AcSetEnable (int ,int ) ;
 int DisableDosProtect () ;
 int EnableDosProtect () ;
 TYPE_12__* GetOsInfo () ;
 int InitEth () ;
 int MEM_FIFO_REALLOC_MEM_SIZE ;
 int MIN (int,int ) ;
 scalar_t__ MsIsUserMode () ;
 int NewAzureClient (TYPE_6__*,TYPE_2__*) ;
 int NewEvent () ;
 int NewIPsecServer (TYPE_6__*) ;
 int NewOpenVpnServerUdp (TYPE_6__*) ;
 int NewThread (int ,TYPE_2__*) ;
 scalar_t__ OSTYPE_LINUX ;
 int SERVER_FILE_SAVE_INTERVAL_DEFAULT ;
 int SERVER_FILE_SAVE_INTERVAL_USERMODE ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int SLog (TYPE_6__*,char*,...) ;
 int SetFifoCurrentReallocMemSize (int ) ;
 int SetLinuxArpFilter () ;
 int SiLoadConfigurationFile (TYPE_2__*) ;
 int SiLoadInitialConfiguration (TYPE_2__*) ;
 int SiSaverThread ;
 int server_reset_setting ;

void SiInitConfiguration(SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 s->AutoSaveConfigSpan = SERVER_FILE_SAVE_INTERVAL_DEFAULT;
 s->BackupConfigOnlyWhenModified = 1;


 if (s->Cedar->Bridge == 0)
 {
  s->IPsecServer = NewIPsecServer(s->Cedar);
 }


 if (s->Cedar->Bridge == 0)
 {
  s->OpenVpnServerUdp = NewOpenVpnServerUdp(s->Cedar);
 }

 SLog(s->Cedar, "LS_LOAD_CONFIG_1");
 if (SiLoadConfigurationFile(s) == 0)
 {

  InitEth();

  SLog(s->Cedar, "LS_LOAD_CONFIG_3");
  SiLoadInitialConfiguration(s);

  SetFifoCurrentReallocMemSize(MEM_FIFO_REALLOC_MEM_SIZE);

  server_reset_setting = 0;
 }
 else
 {
  SLog(s->Cedar, "LS_LOAD_CONFIG_2");
 }

 s->CfgRw->DontBackup = s->DontBackupConfig;


 if (GetOsInfo()->OsType == OSTYPE_LINUX)
 {
  if (s->NoLinuxArpFilter == 0)
  {
   SetLinuxArpFilter();
  }
 }

 if (s->DisableDosProtection)
 {
  DisableDosProtect();
 }
 else
 {
  EnableDosProtect();
 }

 s->AutoSaveConfigSpanSaved = s->AutoSaveConfigSpan;


 if (s->DDnsClient != ((void*)0) && s->Cedar->Bridge == 0 && s->ServerType == SERVER_TYPE_STANDALONE)
 {
  s->AzureClient = NewAzureClient(s->Cedar, s);

  AcSetEnable(s->AzureClient, s->EnableVpnAzure);
 }
 SLog(s->Cedar, "LS_INIT_SAVE_THREAD", s->AutoSaveConfigSpan / 1000);
 s->SaveHaltEvent = NewEvent();
 s->SaveThread = NewThread(SiSaverThread, s);
}
