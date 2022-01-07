
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {char* library_name; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
typedef TYPE_2__ rarch_system_info_t ;
typedef int Result ;


 int AppletFocusHandlingMode_NoSuspend ;
 int PATH_MAX ;
 int RARCH_WARN (char*) ;
 scalar_t__ R_SUCCEEDED (int ) ;
 int appletHook (int *,int ,int *) ;
 int appletInitializeGamePlayRecording () ;
 int appletIsGamePlayRecordingSupported (int*) ;
 int appletLockExit () ;
 int appletSetFocusHandlingMode (int ) ;
 int applet_hook_cookie ;
 int argb_to_rgba8 (scalar_t__,int ,int ) ;
 int clkrstInitialize () ;
 int free (char*) ;
 int frontend_switch_showsplash () ;
 scalar_t__ hosversionBefore (int,int ,int ) ;
 scalar_t__ malloc (int ) ;
 int nifmInitialize () ;
 int nxlinkStdio () ;
 int nxlink_connected ;
 int on_applet_hook ;
 int pcvInitialize () ;
 int psmInitialize () ;
 int psmInitialized ;
 int retro_get_system_info (TYPE_2__*) ;
 int rpng_load_image_argb (char const*,scalar_t__*,int *,int *) ;
 TYPE_2__* runloop_get_system_info () ;
 int snprintf (char*,int ,char*,char const*) ;
 int socketInitializeDefault () ;
 scalar_t__ splashData ;
 int verbosity_enable () ;

__attribute__((used)) static void frontend_switch_init(void *data)
{
}
