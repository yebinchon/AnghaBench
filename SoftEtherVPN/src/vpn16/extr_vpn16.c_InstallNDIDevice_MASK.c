#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* szClassName; int Flags; int /*<<< orphan*/  szRegSubkey; int /*<<< orphan*/ * hRegKey; scalar_t__ lpCompatDrvList; scalar_t__ lpSelectedDriver; int /*<<< orphan*/  atDriverPath; } ;
typedef  scalar_t__ RETERR ;
typedef  TYPE_1__* LPDEVICE_INFO ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  DIF_INSTALLDEVICE ; 
 int /*<<< orphan*/  DIREG_DEV ; 
 int DI_ENUMSINGLEINF ; 
 int DI_NOFILECOPY ; 
 int DI_NOVCP ; 
 int DI_QUIETINSTALL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 void* HKEY_LOCAL_MACHINE ; 
 scalar_t__ OK ; 
 char* REGSTR_VAL_COMPATIBLEIDS ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC12 (char const*) ; 

RETERR FUNC13(const char* szClass,
						const char* szDeviceID, 
						const char* szDriverPath,
						const char* szRegPath)
{
	char *szClassNetProtocol    = "NetTrans"; 
	char *szClassNet            = "Net";
	char *szClassNetClient      = "NetClient";
	char *szClassNetService		= "NetService";
	char *szNull                = "";
	char *szClassNetInfFileName        = "Net.inf";
	char *szClassNetTransInfFileName   = "Nettrans.inf";
	char *szClassNetClientInfFileName  = "Netcli.inf";
	char *szClassNetServiceInfFileName = "Netservr.inf";
	char *szRegKeyNdi           = "Ndi";
	char *szRegKeyBindings      = "Bindings";
	char *szRegValDeviceID      = "DeviceID";
	char *szRegValDriverDesc	= "DriverDesc";
	char *szRegValCompatibleIDs = REGSTR_VAL_COMPATIBLEIDS;
	char *szRegPathNetwork      = "Enum\\Network\\";
	char *szRegPathFilter       = "Enum\\Filter\\";
	char *szRegPathTemp         = "\\Temp";
	char *szVServer				= "VSERVER";
	LPDEVICE_INFO lpdi = NULL;
	RETERR	      err  = OK;

	err = FUNC3( &lpdi, NULL, 0, NULL, NULL, szClass, NULL );
	
	if (err == OK)
	{
		HKEY hKeyTmp;
		
		lpdi->hRegKey = HKEY_LOCAL_MACHINE;
		FUNC11( lpdi->szRegSubkey, szRegPathNetwork );
		FUNC10( lpdi->szRegSubkey, lpdi->szClassName );
		FUNC10( lpdi->szRegSubkey, szRegPathTemp );

		err = FUNC2( lpdi, &hKeyTmp, NULL, NULL, DIREG_DEV );

		if (err == OK)
		{
			if (FUNC9(hKeyTmp, 
			                      szRegValCompatibleIDs, 
			                      0, 
			                      REG_SZ, 
			                      (unsigned char *) szDeviceID,
			                      FUNC12( szDeviceID ) + 1 ) == ERROR_SUCCESS )
			{
            if ( szDriverPath )
            {
               if ( (lpdi->atDriverPath = FUNC7( szDriverPath )) )
                  lpdi->Flags |= DI_ENUMSINGLEINF;
				}

				err = FUNC0( lpdi );
				
				FUNC8( hKeyTmp );
				
				FUNC4( lpdi, DIREG_DEV );
				lpdi->hRegKey = NULL;
				FUNC11( lpdi->szRegSubkey, szNull );

				if ( err || !lpdi->lpCompatDrvList )
				{
					err = FUNC6( lpdi );		
				}
				else
				{
					lpdi->lpSelectedDriver = lpdi->lpCompatDrvList;
				}
				
				if ( err == OK )
				{
					if ( szRegPath )
					{
						lpdi->hRegKey = HKEY_LOCAL_MACHINE;
						FUNC11( lpdi->szRegSubkey, szRegPath );
						
						FUNC2( lpdi, &hKeyTmp, NULL, NULL, DIREG_DEV );
					}

					lpdi->Flags |= DI_NOVCP | DI_NOFILECOPY | DI_QUIETINSTALL;
               err = FUNC1( DIF_INSTALLDEVICE, lpdi );
				}
            else
            {
               FUNC5( lpdi );
            }
			}
			else
			{
				FUNC4( lpdi, DIREG_DEV );
            FUNC5( lpdi );
			}
		}
      else
      {
         FUNC5( lpdi );
      }
	}

	return err;		                 
}