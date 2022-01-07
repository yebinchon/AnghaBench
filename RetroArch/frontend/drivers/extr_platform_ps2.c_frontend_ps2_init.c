
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cwd ;


 int CDVD_Init () ;
 int FILENAME_MAX ;
 int MC_TYPE_XMC ;
 int RARCH_ERR (char*) ;
 int SCECdINoD ;
 int SifExecModuleBuffer (int *,int ,int ,int *,int *) ;
 int SifInitRpc (int ) ;
 int SifIopReset (int *,int ) ;
 int SifIopSync () ;
 int _init_ps2_io () ;
 scalar_t__ audsrv_init () ;
 int audsrv_irx ;
 int cdvd_irx ;
 int fileXio_irx ;
 int freemtap_irx ;
 int freepad_irx ;
 int freesd_irx ;
 int freesio2_irx ;
 int getBootDeviceID (char*) ;
 int getcwd (char*,int) ;
 int iomanX_irx ;
 scalar_t__ mcInit (int ) ;
 int mcman_irx ;
 int mcserv_irx ;
 int mtapInit () ;
 int mtapPortOpen (int ) ;
 int padInit (int ) ;
 int retro_main_log_file_init (char*,int) ;
 int sbv_patch_enable_lmb () ;
 int sceCdInit (int ) ;
 int size_audsrv_irx ;
 int size_cdvd_irx ;
 int size_fileXio_irx ;
 int size_freemtap_irx ;
 int size_freepad_irx ;
 int size_freesd_irx ;
 int size_freesio2_irx ;
 int size_iomanX_irx ;
 int size_mcman_irx ;
 int size_mcserv_irx ;
 int size_usbd_irx ;
 int size_usbhdfsd_irx ;
 int usbd_irx ;
 int usbhdfsd_irx ;
 int verbosity_enable () ;
 int waitUntilDeviceIsReady (int) ;

__attribute__((used)) static void frontend_ps2_init(void *data)
{
   char cwd[FILENAME_MAX];
   int bootDeviceID;

   SifInitRpc(0);


   while(!SifIopReset(((void*)0), 0)){};


   while(!SifIopSync()){};
   SifInitRpc(0);
   sbv_patch_enable_lmb();


   SifExecModuleBuffer(&iomanX_irx, size_iomanX_irx, 0, ((void*)0), ((void*)0));
   SifExecModuleBuffer(&fileXio_irx, size_fileXio_irx, 0, ((void*)0), ((void*)0));
   SifExecModuleBuffer(&freesio2_irx, size_freesio2_irx, 0, ((void*)0), ((void*)0));


   SifExecModuleBuffer(&mcman_irx, size_mcman_irx, 0, ((void*)0), ((void*)0));
   SifExecModuleBuffer(&mcserv_irx, size_mcserv_irx, 0, ((void*)0), ((void*)0));


   SifExecModuleBuffer(&freemtap_irx, size_freemtap_irx, 0, ((void*)0), ((void*)0));
   SifExecModuleBuffer(&freepad_irx, size_freepad_irx, 0, ((void*)0), ((void*)0));


   SifExecModuleBuffer(&usbd_irx, size_usbd_irx, 0, ((void*)0), ((void*)0));
   SifExecModuleBuffer(&usbhdfsd_irx, size_usbhdfsd_irx, 0, ((void*)0), ((void*)0));


   SifExecModuleBuffer(&freesd_irx, size_freesd_irx, 0, ((void*)0), ((void*)0));
   SifExecModuleBuffer(&audsrv_irx, size_audsrv_irx, 0, ((void*)0), ((void*)0));


   SifExecModuleBuffer(&cdvd_irx, size_cdvd_irx, 0, ((void*)0), ((void*)0));

   if (mcInit(MC_TYPE_XMC)) {
      RARCH_ERR("mcInit library not initalizated\n");
   }


   if (audsrv_init()) {
      RARCH_ERR("audsrv library not initalizated\n");
   }



   if (mtapInit() != 1) {
      RARCH_ERR("mtapInit library not initalizated\n");
   }
   if (padInit(0) != 1) {
      RARCH_ERR("padInit library not initalizated\n");
   }
   if (mtapPortOpen(0) != 1) {
      RARCH_ERR("mtapPortOpen library not initalizated\n");
   }



   sceCdInit(SCECdINoD);
   if (CDVD_Init() != 1) {
      RARCH_ERR("CDVD_Init library not initalizated\n");
   }

   _init_ps2_io();


   getcwd(cwd, sizeof(cwd));
   bootDeviceID=getBootDeviceID(cwd);
   waitUntilDeviceIsReady(bootDeviceID);





}
