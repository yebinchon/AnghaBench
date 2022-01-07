
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* name; int * interface; void* mounted; } ;
struct TYPE_6__ {int fbWidth; int xfbHeight; } ;
typedef TYPE_1__ GXRModeObj ;


 int DEBUG_Init (int ,int) ;
 int FALSE ;
 int GDBSTUB_DEVICE_USB ;
 size_t GX_DEVICE_SD ;
 size_t GX_DEVICE_USB ;
 int IOS_GetVersion () ;
 int IOS_ReloadIOS (int ) ;
 int L2Enhance () ;
 void* MEM_K0_TO_K1 (int ) ;
 size_t STD_ERR ;
 size_t STD_OUT ;
 int SYS_AllocateFramebuffer (TYPE_1__*) ;
 int VIConfigure (TYPE_1__*) ;
 TYPE_1__* VIDEO_GetPreferredMode (int *) ;
 int VIFlush () ;
 int VIInit () ;
 int VISetBlack (int ) ;
 int VISetNextFramebuffer (void*) ;
 int VIWaitForRetrace () ;
 int VI_DISPLAY_PIX_SZ ;
 int __exception_setreload (int) ;
 int __io_usbstorage ;
 int __io_wiisd ;
 int _break () ;
 int console_init (void*,int,int,int,int ,int) ;
 int ** devoptab_list ;
 int dotab_stdout ;
 int fatInitDefault () ;
 void* fatMountSimple (char*,int *) ;
 int gx_device_cond ;
 void* gx_device_cond_mutex ;
 void* gx_device_mutex ;
 int gx_device_thread ;
 TYPE_2__* gx_devices ;
 int gx_devthread ;
 int gx_init_mem2 () ;
 int scond_new () ;
 void* slock_new () ;
 int sthread_create (int ,int *) ;

__attribute__((used)) static void frontend_gx_init(void *data)
{
   (void)data;
   __exception_setreload(8);


   fatInitDefault();

   devoptab_list[STD_OUT] = &dotab_stdout;
   devoptab_list[STD_ERR] = &dotab_stdout;
}
