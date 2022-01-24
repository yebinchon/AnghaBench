#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MESSAGE_OFFSET_EN ; 
 int /*<<< orphan*/  MESSAGE_OFFSET_JP ; 
 int /*<<< orphan*/  _e_msgAppTitle ; 
 int /*<<< orphan*/  _e_msgBadInfFile ; 
 int /*<<< orphan*/  _e_msgButtonForVpnClient ; 
 int /*<<< orphan*/  _e_msgButtonForVpnServer ; 
 int /*<<< orphan*/  _e_msgDownloading ; 
 int /*<<< orphan*/  _e_msgInfDownload ; 
 int /*<<< orphan*/  _e_msgInfDownloadFailed ; 
 int /*<<< orphan*/  _e_msgNoParam ; 
 int /*<<< orphan*/  _e_msgNotSupported ; 
 int /*<<< orphan*/  _e_msgProcessCreated ; 
 int /*<<< orphan*/  _e_msgProcessCreatedForVpnServer ; 
 int /*<<< orphan*/  _e_msgProcessCreating ; 
 int /*<<< orphan*/  _e_msgProcessFailed ; 
 int /*<<< orphan*/  _e_msgStartTextForVpnClient ; 
 int /*<<< orphan*/  _e_msgStartTextForVpnServer ; 
 int /*<<< orphan*/  _e_msgUserCancel ; 
 int /*<<< orphan*/  _e_msgWarning ; 
 int /*<<< orphan*/  _e_msgWarningTitle ; 
 int /*<<< orphan*/  _e_msgWriteFailed ; 
 int /*<<< orphan*/  currentPage ; 
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
 scalar_t__ FUNC2 (char*,char*) ; 

int FUNC3(char *pTag){
	if( FUNC2(pTag,"JP")==0 || FUNC2(pTag,"JA")==0){
		currentPage=MESSAGE_OFFSET_JP;
		
	}else if( FUNC2(pTag,"EN")==0)
	{
		currentPage=MESSAGE_OFFSET_EN;
	}
//		currentPage=MESSAGE_OFFSET_EN;

	msgAppTitle=FUNC1(_e_msgAppTitle);
	msgNotSupported=FUNC0(_e_msgNotSupported);
	msgInfDownload=FUNC1(_e_msgInfDownload);
	msgInfDownloadFailed=FUNC1(_e_msgInfDownloadFailed);
	msgBadInfFile=FUNC1(_e_msgBadInfFile);
	msgWriteFailed=FUNC1(_e_msgWriteFailed);
	msgDownloading=FUNC1(_e_msgDownloading);
	msgProcessFailed=FUNC1(_e_msgProcessFailed);
	msgProcessCreating=FUNC1(_e_msgProcessCreating);
	msgProcessCreated=FUNC1(_e_msgProcessCreated);
	msgWarning=FUNC1(_e_msgWarning);
	msgWarningTitle=FUNC1(_e_msgWarningTitle);
	msgUserCancel=FUNC1(_e_msgUserCancel);
	msgStartTextForVpnServer=FUNC1(_e_msgStartTextForVpnServer);
	msgButtonForVpnServer=FUNC1(_e_msgButtonForVpnServer);
	msgProcessCreatedForVpnServer=FUNC1(_e_msgProcessCreatedForVpnServer);
	msgNoParam=FUNC0(_e_msgNoParam);
	msgStartTextForVpnClient=FUNC1(_e_msgStartTextForVpnClient);
	msgButtonForVpnClient=FUNC1(_e_msgButtonForVpnClient);
	return 0;

}