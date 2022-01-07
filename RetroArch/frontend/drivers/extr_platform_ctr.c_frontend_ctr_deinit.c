
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ frameBuffer; } ;
typedef TYPE_1__ PrintConsole ;
typedef int Handle ;


 int CFGU_GetModelNintendo2DS (int*) ;
 int CFGU_GetSystemModel (int*) ;
 scalar_t__ FRONTEND_FORK_NONE ;
 int GSPGPU_WriteHWRegs (int,int*,int) ;
 int cfguExit () ;
 int csndExit () ;
 scalar_t__ ctr_fork_mode ;
 int* getThreadCommandBuffer () ;
 int** gfxBottomFramebuffers ;
 int gfxExit () ;
 int ** gfxTopRightFramebuffers ;
 int mcuHwcExit () ;
 int ndspExit () ;
 int ptmuExit () ;
 int retro_main_log_file_deinit () ;
 int retro_main_log_file_init (int *,int) ;
 scalar_t__ srvGetServiceHandle (int *,char*) ;
 int svcCloseHandle (int ) ;
 int svcSendSyncRequest (int ) ;
 int verbosity_enable () ;
 int wait_for_input () ;

__attribute__((used)) static void frontend_ctr_deinit(void* data)
{
   Handle lcd_handle;
   u32 parallax_layer_reg_state;
   u8 not_2DS;
   u8 device_model = 0xFF;

   extern PrintConsole* currentConsole;

   (void)data;
   retro_main_log_file_deinit();
   verbosity_enable();
   retro_main_log_file_init(((void*)0), 0);

   if ((gfxBottomFramebuffers[0] == (u8*)currentConsole->frameBuffer)
         && (ctr_fork_mode == FRONTEND_FORK_NONE))
      wait_for_input();

   CFGU_GetModelNintendo2DS(&not_2DS);

   if (not_2DS && srvGetServiceHandle(&lcd_handle, "gsp::Lcd") >= 0)
   {
      u32* cmdbuf = getThreadCommandBuffer();
      cmdbuf[0] = 0x00110040;
      cmdbuf[1] = 2;
      svcSendSyncRequest(lcd_handle);
      svcCloseHandle(lcd_handle);
   }





   CFGU_GetSystemModel(&device_model);
   if ((device_model == 0) || (device_model == 1))
   {
      parallax_layer_reg_state = (*(float*)0x1FF81080 == 0.0) ? 0x0 : 0x00010001;
      GSPGPU_WriteHWRegs(0x202000, &parallax_layer_reg_state, 4);
   }

   mcuHwcExit();
   ptmuExit();
   cfguExit();
   ndspExit();
   csndExit();
   gfxTopRightFramebuffers[0] = ((void*)0);
   gfxTopRightFramebuffers[1] = ((void*)0);
   gfxExit();

}
