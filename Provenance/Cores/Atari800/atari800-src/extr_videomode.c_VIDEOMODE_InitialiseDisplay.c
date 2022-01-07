
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VIDEOMODE_resolution_t ;
struct TYPE_8__ {int min_h; int min_w; } ;
struct TYPE_7__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_6__ {scalar_t__ width; scalar_t__ height; } ;


 int AutodetectHostAspect (double*,double*) ;
 int CompareResolutions ;
 int FALSE ;
 int Log_print (char*,...) ;
 TYPE_1__* PLATFORM_AvailableResolutions (size_t*) ;
 int PLATFORM_PaletteUpdate () ;
 int RemoveDuplicateResolutions () ;
 int TRUE ;
 int UpdateTvSystemSettings () ;
 int VIDEOMODE_Update () ;
 double VIDEOMODE_host_aspect_ratio_h ;
 double VIDEOMODE_host_aspect_ratio_w ;
 size_t current_resolution ;
 TYPE_4__* display_modes ;
 TYPE_3__ init_fs_resolution ;
 int qsort (TYPE_1__*,size_t,int,int *) ;
 TYPE_1__* resolutions ;
 size_t resolutions_size ;

int VIDEOMODE_InitialiseDisplay(void)
{

 resolutions = PLATFORM_AvailableResolutions(&resolutions_size);
 if (resolutions == ((void*)0)) {
  Log_print("Fatal error: System reports no display resolutions available");
  return FALSE;
 }

 qsort(resolutions, resolutions_size, sizeof(VIDEOMODE_resolution_t), &CompareResolutions);
 RemoveDuplicateResolutions();
 if (resolutions_size == 0) {
  Log_print("Fatal error: System reports no resolution higher than minimal %ux%u available",
            display_modes[0].min_w, display_modes[0].min_h);
  return FALSE;
 }


 for (current_resolution = 0; current_resolution < resolutions_size; current_resolution ++) {
  if (resolutions[current_resolution].width >= init_fs_resolution.width &&
      resolutions[current_resolution].height >= init_fs_resolution.height)
   break;
 }
 if (current_resolution >= resolutions_size) {

  current_resolution = resolutions_size - 1;
  Log_print("Requested resolution %ux%u is too big, using %ux%u instead.",
            init_fs_resolution.width, init_fs_resolution.height,
            resolutions[current_resolution].width, resolutions[current_resolution].height);
 } else if (resolutions[current_resolution].width != init_fs_resolution.width ||
            resolutions[current_resolution].height != init_fs_resolution.height)
  Log_print("Requested resolution %ux%u is not available, using %ux%u instead.",
            init_fs_resolution.width, init_fs_resolution.height,
            resolutions[current_resolution].width, resolutions[current_resolution].height);

 if (VIDEOMODE_host_aspect_ratio_w == 0.0 || VIDEOMODE_host_aspect_ratio_h == 0.0)
  AutodetectHostAspect(&VIDEOMODE_host_aspect_ratio_w, &VIDEOMODE_host_aspect_ratio_h);

 UpdateTvSystemSettings();
 if (!VIDEOMODE_Update()) {
  Log_print("Fatal error: Cannot initialise video");
  return FALSE;
 }



 return TRUE;
}
