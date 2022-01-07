
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DTBLOB_T ;


 int DIR_MODE ;
 scalar_t__ dir_exists (char const*) ;
 int dt_overlays_dir ;
 int dtoverlay_free_dtb (int *) ;
 int * dtoverlay_load_dtb (char const*,int ) ;
 scalar_t__ dtoverlay_save_dtb (int *,char const*) ;
 int error (char*,...) ;
 int free_string (char const*) ;
 scalar_t__ mkdir (char const*,int ) ;
 int overlay_applied (char const*) ;
 int rmdir (char const*) ;
 char* sprintf_dup (char*,char const*,...) ;

__attribute__((used)) static int apply_overlay(const char *overlay_file, const char *overlay)
{
    const char *overlay_dir = sprintf_dup("%s/%s", dt_overlays_dir, overlay);
    int ret = 0;
    if (dir_exists(overlay_dir))
    {
 error("Overlay '%s' is already loaded", overlay);
    }
    else if (mkdir(overlay_dir, DIR_MODE) == 0)
    {
 DTBLOB_T *dtb = dtoverlay_load_dtb(overlay_file, 0);
 if (!dtb)
 {
     error("Failed to apply overlay '%s' (load)", overlay);
 }
 else
 {
     const char *dest_file = sprintf_dup("%s/dtbo", overlay_dir);


     if (dtoverlay_save_dtb(dtb, dest_file) != 0)
  error("Failed to apply overlay '%s' (save)", overlay);
     else if (!overlay_applied(overlay_dir))
  error("Failed to apply overlay '%s' (kernel)", overlay);
     else
  ret = 1;

     free_string(dest_file);
     dtoverlay_free_dtb(dtb);
 }

 if (!ret)
  rmdir(overlay_dir);
    }
    else
    {
 error("Failed to create overlay directory");
    }

    return ret;
}
