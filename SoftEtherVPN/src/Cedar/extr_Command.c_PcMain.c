
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
typedef int prompt ;
typedef int cmd ;
struct TYPE_13__ {scalar_t__ RetCode; scalar_t__ ConsoleType; int (* Write ) (TYPE_3__*,char*) ;} ;
struct TYPE_12__ {char* member_0; int member_1; } ;
struct TYPE_11__ {scalar_t__ LastError; int * CmdLine; TYPE_3__* Console; int ServerName; } ;
typedef TYPE_1__ PC ;
typedef TYPE_2__ CMD ;


 scalar_t__ CONSOLE_CSV ;
 int DispatchNextCmdEx (TYPE_3__*,int *,char*,TYPE_2__*,int,TYPE_1__*) ;
 scalar_t__ ERR_NO_ERROR ;
 int MAX_SIZE ;
 int PcAccountAnonymousSet ;
 int PcAccountCertGet ;
 int PcAccountCertSet ;
 int PcAccountCompressDisable ;
 int PcAccountCompressEnable ;
 int PcAccountConnect ;
 int PcAccountCreate ;
 int PcAccountDelete ;
 int PcAccountDetailSet ;
 int PcAccountDisconnect ;
 int PcAccountEncryptDisable ;
 int PcAccountEncryptEnable ;
 int PcAccountExport ;
 int PcAccountGet ;
 int PcAccountHttpHeaderAdd ;
 int PcAccountHttpHeaderDelete ;
 int PcAccountHttpHeaderGet ;
 int PcAccountImport ;
 int PcAccountList ;
 int PcAccountNicSet ;
 int PcAccountPasswordSet ;
 int PcAccountProxyHttp ;
 int PcAccountProxyNone ;
 int PcAccountProxySocks ;
 int PcAccountProxySocks5 ;
 int PcAccountRename ;
 int PcAccountRetryOnServerCertDisable ;
 int PcAccountRetryOnServerCertEnable ;
 int PcAccountRetrySet ;
 int PcAccountSecureCertSet ;
 int PcAccountServerCertDelete ;
 int PcAccountServerCertDisable ;
 int PcAccountServerCertEnable ;
 int PcAccountServerCertGet ;
 int PcAccountServerCertSet ;
 int PcAccountSet ;
 int PcAccountStartupRemove ;
 int PcAccountStartupSet ;
 int PcAccountStatusGet ;
 int PcAccountStatusHide ;
 int PcAccountStatusShow ;
 int PcAccountUsernameSet ;
 int PcCertAdd ;
 int PcCertDelete ;
 int PcCertGet ;
 int PcCertList ;
 int PcKeepDisable ;
 int PcKeepEnable ;
 int PcKeepGet ;
 int PcKeepSet ;
 int PcNicCreate ;
 int PcNicDelete ;
 int PcNicDisable ;
 int PcNicEnable ;
 int PcNicGetSetting ;
 int PcNicList ;
 int PcNicSetSetting ;
 int PcNicUpgrade ;
 int PcPasswordGet ;
 int PcPasswordSet ;
 int PcRemoteDisable ;
 int PcRemoteEnable ;
 int PcSecureGet ;
 int PcSecureList ;
 int PcSecureSelect ;
 int PcTunDownOnDisconnectDisable ;
 int PcTunDownOnDisconnectEnable ;
 int PcTunDownOnDisconnectGet ;
 int PcVersionGet ;
 int PsAbout ;
 int PtCheck ;
 int PtMakeCert ;
 int PtMakeCert2048 ;
 int PtTrafficClient ;
 int PtTrafficServer ;
 int StrCpy (char*,int,char*) ;
 int UniFormat (char*,int,char*,int ) ;
 char* _UU (char*) ;
 int stub1 (TYPE_3__*,char*) ;
 int stub2 (TYPE_3__*,char*) ;
 int stub3 (TYPE_3__*,char*) ;
 int stub4 (TYPE_3__*,char*) ;

void PcMain(PC *pc)
{
 char prompt[MAX_SIZE];
 wchar_t tmp[MAX_SIZE];

 if (pc == ((void*)0))
 {
  return;
 }


 UniFormat(tmp, sizeof(tmp), _UU("CMD_VPNCMD_CLIENT_CONNECTED"),
  pc->ServerName);
 pc->Console->Write(pc->Console, tmp);
 pc->Console->Write(pc->Console, L"");

 while (1)
 {

  CMD cmd[] =
  {
   {"About", PsAbout},
   {"Check", PtCheck},
   {"VersionGet", PcVersionGet},
   {"PasswordSet", PcPasswordSet},
   {"PasswordGet", PcPasswordGet},
   {"CertList", PcCertList},
   {"CertAdd", PcCertAdd},
   {"CertDelete", PcCertDelete},
   {"CertGet", PcCertGet},
   {"SecureList", PcSecureList},
   {"SecureSelect", PcSecureSelect},
   {"SecureGet", PcSecureGet},
   {"NicCreate", PcNicCreate},
   {"NicDelete", PcNicDelete},
   {"NicUpgrade", PcNicUpgrade},
   {"NicGetSetting", PcNicGetSetting},
   {"NicSetSetting", PcNicSetSetting},
   {"NicEnable", PcNicEnable},
   {"NicDisable", PcNicDisable},
   {"NicList", PcNicList},
   {"AccountList", PcAccountList},
   {"AccountCreate", PcAccountCreate},
   {"AccountSet", PcAccountSet},
   {"AccountGet", PcAccountGet},
   {"AccountDelete", PcAccountDelete},
   {"AccountUsernameSet", PcAccountUsernameSet},
   {"AccountAnonymousSet", PcAccountAnonymousSet},
   {"AccountPasswordSet", PcAccountPasswordSet},
   {"AccountCertSet", PcAccountCertSet},
   {"AccountCertGet", PcAccountCertGet},
   {"AccountEncryptDisable", PcAccountEncryptDisable},
   {"AccountEncryptEnable", PcAccountEncryptEnable},
   {"AccountCompressEnable", PcAccountCompressEnable},
   {"AccountCompressDisable", PcAccountCompressDisable},
   {"AccountHttpHeaderAdd", PcAccountHttpHeaderAdd},
   {"AccountHttpHeaderDelete", PcAccountHttpHeaderDelete},
   {"AccountHttpHeaderGet", PcAccountHttpHeaderGet},
   {"AccountProxyNone", PcAccountProxyNone},
   {"AccountProxyHttp", PcAccountProxyHttp},
   {"AccountProxySocks", PcAccountProxySocks},
   {"AccountProxySocks5", PcAccountProxySocks5},
   {"AccountServerCertEnable", PcAccountServerCertEnable},
   {"AccountServerCertDisable", PcAccountServerCertDisable},
   {"AccountRetryOnServerCertEnable", PcAccountRetryOnServerCertEnable},
   {"AccountRetryOnServerCertDisable", PcAccountRetryOnServerCertDisable},
   {"AccountServerCertSet", PcAccountServerCertSet},
   {"AccountServerCertDelete", PcAccountServerCertDelete},
   {"AccountServerCertGet", PcAccountServerCertGet},
   {"AccountDetailSet", PcAccountDetailSet},
   {"AccountRename", PcAccountRename},
   {"AccountConnect", PcAccountConnect},
   {"AccountDisconnect", PcAccountDisconnect},
   {"AccountStatusGet", PcAccountStatusGet},
   {"AccountNicSet", PcAccountNicSet},
   {"AccountStatusShow", PcAccountStatusShow},
   {"AccountStatusHide", PcAccountStatusHide},
   {"AccountSecureCertSet", PcAccountSecureCertSet},
   {"AccountRetrySet", PcAccountRetrySet},
   {"AccountStartupSet", PcAccountStartupSet},
   {"AccountStartupRemove", PcAccountStartupRemove},
   {"AccountExport", PcAccountExport},
   {"AccountImport", PcAccountImport},
   {"RemoteEnable", PcRemoteEnable},
   {"RemoteDisable", PcRemoteDisable},
   {"TUNDownOnDisconnectEnable", PcTunDownOnDisconnectEnable},
   {"TUNDownOnDisconnectDisable", PcTunDownOnDisconnectDisable},
   {"TUNDownOnDisconnectGet", PcTunDownOnDisconnectGet},
   {"KeepEnable", PcKeepEnable},
   {"KeepDisable", PcKeepDisable},
   {"KeepSet", PcKeepSet},
   {"KeepGet", PcKeepGet},
   {"MakeCert", PtMakeCert},
   {"MakeCert2048", PtMakeCert2048},
   {"TrafficClient", PtTrafficClient},
   {"TrafficServer", PtTrafficServer},
  };


  StrCpy(prompt, sizeof(prompt), "VPN Client>");

  if (DispatchNextCmdEx(pc->Console, pc->CmdLine, prompt, cmd, sizeof(cmd) / sizeof(cmd[0]), pc) == 0)
  {
   break;
  }
  pc->LastError = pc->Console->RetCode;

  if (pc->LastError == ERR_NO_ERROR && pc->Console->ConsoleType != CONSOLE_CSV)
  {
   pc->Console->Write(pc->Console, _UU("CMD_MSG_OK"));
   pc->Console->Write(pc->Console, L"");
  }

  if (pc->CmdLine != ((void*)0))
  {
   break;
  }
 }
}
