
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* LoadMessageA (int ) ;
 void* LoadMessageW (int ) ;
 int MESSAGE_OFFSET_EN ;
 int MESSAGE_OFFSET_JP ;
 int _e_msgAppTitle ;
 int _e_msgBadInfFile ;
 int _e_msgButtonForVpnClient ;
 int _e_msgButtonForVpnServer ;
 int _e_msgDownloading ;
 int _e_msgInfDownload ;
 int _e_msgInfDownloadFailed ;
 int _e_msgNoParam ;
 int _e_msgNotSupported ;
 int _e_msgProcessCreated ;
 int _e_msgProcessCreatedForVpnServer ;
 int _e_msgProcessCreating ;
 int _e_msgProcessFailed ;
 int _e_msgStartTextForVpnClient ;
 int _e_msgStartTextForVpnServer ;
 int _e_msgUserCancel ;
 int _e_msgWarning ;
 int _e_msgWarningTitle ;
 int _e_msgWriteFailed ;
 int currentPage ;
 void* msgAppTitle ;
 void* msgBadInfFile ;
 void* msgButtonForVpnClient ;
 void* msgButtonForVpnServer ;
 void* msgDownloading ;
 void* msgInfDownload ;
 void* msgInfDownloadFailed ;
 void* msgNoParam ;
 void* msgNotSupported ;
 void* msgProcessCreated ;
 void* msgProcessCreatedForVpnServer ;
 void* msgProcessCreating ;
 void* msgProcessFailed ;
 void* msgStartTextForVpnClient ;
 void* msgStartTextForVpnServer ;
 void* msgUserCancel ;
 void* msgWarning ;
 void* msgWarningTitle ;
 void* msgWriteFailed ;
 scalar_t__ stricmp (char*,char*) ;

int LoadTables(char *pTag){
 if( stricmp(pTag,"JP")==0 || stricmp(pTag,"JA")==0){
  currentPage=MESSAGE_OFFSET_JP;

 }else if( stricmp(pTag,"EN")==0)
 {
  currentPage=MESSAGE_OFFSET_EN;
 }


 msgAppTitle=LoadMessageW(_e_msgAppTitle);
 msgNotSupported=LoadMessageA(_e_msgNotSupported);
 msgInfDownload=LoadMessageW(_e_msgInfDownload);
 msgInfDownloadFailed=LoadMessageW(_e_msgInfDownloadFailed);
 msgBadInfFile=LoadMessageW(_e_msgBadInfFile);
 msgWriteFailed=LoadMessageW(_e_msgWriteFailed);
 msgDownloading=LoadMessageW(_e_msgDownloading);
 msgProcessFailed=LoadMessageW(_e_msgProcessFailed);
 msgProcessCreating=LoadMessageW(_e_msgProcessCreating);
 msgProcessCreated=LoadMessageW(_e_msgProcessCreated);
 msgWarning=LoadMessageW(_e_msgWarning);
 msgWarningTitle=LoadMessageW(_e_msgWarningTitle);
 msgUserCancel=LoadMessageW(_e_msgUserCancel);
 msgStartTextForVpnServer=LoadMessageW(_e_msgStartTextForVpnServer);
 msgButtonForVpnServer=LoadMessageW(_e_msgButtonForVpnServer);
 msgProcessCreatedForVpnServer=LoadMessageW(_e_msgProcessCreatedForVpnServer);
 msgNoParam=LoadMessageA(_e_msgNoParam);
 msgStartTextForVpnClient=LoadMessageW(_e_msgStartTextForVpnClient);
 msgButtonForVpnClient=LoadMessageW(_e_msgButtonForVpnClient);
 return 0;

}
