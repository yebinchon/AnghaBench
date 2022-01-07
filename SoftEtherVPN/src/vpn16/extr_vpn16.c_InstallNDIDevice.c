
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* szClassName; int Flags; int szRegSubkey; int * hRegKey; scalar_t__ lpCompatDrvList; scalar_t__ lpSelectedDriver; int atDriverPath; } ;
typedef scalar_t__ RETERR ;
typedef TYPE_1__* LPDEVICE_INFO ;
typedef int HKEY ;


 int DIF_INSTALLDEVICE ;
 int DIREG_DEV ;
 int DI_ENUMSINGLEINF ;
 int DI_NOFILECOPY ;
 int DI_NOVCP ;
 int DI_QUIETINSTALL ;
 scalar_t__ DiBuildCompatDrvList (TYPE_1__*) ;
 scalar_t__ DiCallClassInstaller (int ,TYPE_1__*) ;
 scalar_t__ DiCreateDevRegKey (TYPE_1__*,int *,int *,int *,int ) ;
 scalar_t__ DiCreateDeviceInfo (TYPE_1__**,int *,int ,int *,int *,char const*,int *) ;
 int DiDeleteDevRegKey (TYPE_1__*,int ) ;
 int DiDestroyDeviceInfoList (TYPE_1__*) ;
 scalar_t__ DiSelectDevice (TYPE_1__*) ;
 scalar_t__ ERROR_SUCCESS ;
 int GlobalAddAtom (char const*) ;
 void* HKEY_LOCAL_MACHINE ;
 scalar_t__ OK ;
 char* REGSTR_VAL_COMPATIBLEIDS ;
 int REG_SZ ;
 int SURegCloseKey (int ) ;
 scalar_t__ SURegSetValueEx (int ,char*,int ,int ,unsigned char*,scalar_t__) ;
 int lstrcat (int ,char*) ;
 int lstrcpy (int ,char const*) ;
 scalar_t__ lstrlen (char const*) ;

RETERR InstallNDIDevice(const char* szClass,
      const char* szDeviceID,
      const char* szDriverPath,
      const char* szRegPath)
{
 char *szClassNetProtocol = "NetTrans";
 char *szClassNet = "Net";
 char *szClassNetClient = "NetClient";
 char *szClassNetService = "NetService";
 char *szNull = "";
 char *szClassNetInfFileName = "Net.inf";
 char *szClassNetTransInfFileName = "Nettrans.inf";
 char *szClassNetClientInfFileName = "Netcli.inf";
 char *szClassNetServiceInfFileName = "Netservr.inf";
 char *szRegKeyNdi = "Ndi";
 char *szRegKeyBindings = "Bindings";
 char *szRegValDeviceID = "DeviceID";
 char *szRegValDriverDesc = "DriverDesc";
 char *szRegValCompatibleIDs = REGSTR_VAL_COMPATIBLEIDS;
 char *szRegPathNetwork = "Enum\\Network\\";
 char *szRegPathFilter = "Enum\\Filter\\";
 char *szRegPathTemp = "\\Temp";
 char *szVServer = "VSERVER";
 LPDEVICE_INFO lpdi = ((void*)0);
 RETERR err = OK;

 err = DiCreateDeviceInfo( &lpdi, ((void*)0), 0, ((void*)0), ((void*)0), szClass, ((void*)0) );

 if (err == OK)
 {
  HKEY hKeyTmp;

  lpdi->hRegKey = HKEY_LOCAL_MACHINE;
  lstrcpy( lpdi->szRegSubkey, szRegPathNetwork );
  lstrcat( lpdi->szRegSubkey, lpdi->szClassName );
  lstrcat( lpdi->szRegSubkey, szRegPathTemp );

  err = DiCreateDevRegKey( lpdi, &hKeyTmp, ((void*)0), ((void*)0), DIREG_DEV );

  if (err == OK)
  {
   if (SURegSetValueEx(hKeyTmp,
                         szRegValCompatibleIDs,
                         0,
                         REG_SZ,
                         (unsigned char *) szDeviceID,
                         lstrlen( szDeviceID ) + 1 ) == ERROR_SUCCESS )
   {
            if ( szDriverPath )
            {
               if ( lpdi->atDriverPath = GlobalAddAtom( szDriverPath ) )
                  lpdi->Flags |= DI_ENUMSINGLEINF;
    }

    err = DiBuildCompatDrvList( lpdi );

    SURegCloseKey( hKeyTmp );

    DiDeleteDevRegKey( lpdi, DIREG_DEV );
    lpdi->hRegKey = ((void*)0);
    lstrcpy( lpdi->szRegSubkey, szNull );

    if ( err || !lpdi->lpCompatDrvList )
    {
     err = DiSelectDevice( lpdi );
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
      lstrcpy( lpdi->szRegSubkey, szRegPath );

      DiCreateDevRegKey( lpdi, &hKeyTmp, ((void*)0), ((void*)0), DIREG_DEV );
     }

     lpdi->Flags |= DI_NOVCP | DI_NOFILECOPY | DI_QUIETINSTALL;
               err = DiCallClassInstaller( DIF_INSTALLDEVICE, lpdi );
    }
            else
            {
               DiDestroyDeviceInfoList( lpdi );
            }
   }
   else
   {
    DiDeleteDevRegKey( lpdi, DIREG_DEV );
            DiDestroyDeviceInfoList( lpdi );
   }
  }
      else
      {
         DiDestroyDeviceInfoList( lpdi );
      }
 }

 return err;
}
