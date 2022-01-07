
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modctl {scalar_t__ mod_address; scalar_t__ mod_size; scalar_t__ mod_loaded; int mod_modname; } ;


 int ASSERT (int) ;
 int FALSE ;
 scalar_t__ LIT_STRNEQL (int ,char*) ;
 int MOD_FBT_DONE (struct modctl*) ;
 int TRUE ;
 scalar_t__ ignore_fbt_blacklist ;
 int * strstr (int ,char*) ;

int
fbt_module_excluded(struct modctl* ctl)
{
 ASSERT(!MOD_FBT_DONE(ctl));

 if (ctl->mod_address == 0 || ctl->mod_size == 0) {
  return TRUE;
 }

 if (ctl->mod_loaded == 0) {
         return TRUE;
 }




 if (ignore_fbt_blacklist)
  return FALSE;
 if (strstr(ctl->mod_modname, "AppleACPIEC") != ((void*)0))
  return TRUE;

 if (strstr(ctl->mod_modname, "AppleACPIPlatform") != ((void*)0))
  return TRUE;

 if (strstr(ctl->mod_modname, "AppleRTC") != ((void*)0))
  return TRUE;

 if (strstr(ctl->mod_modname, "IOACPIFamily") != ((void*)0))
  return TRUE;

 if (strstr(ctl->mod_modname, "AppleIntelCPUPowerManagement") != ((void*)0))
  return TRUE;

 if (strstr(ctl->mod_modname, "AppleProfile") != ((void*)0))
  return TRUE;

 if (strstr(ctl->mod_modname, "AppleIntelProfile") != ((void*)0))
  return TRUE;

 if (strstr(ctl->mod_modname, "AppleEFI") != ((void*)0))
  return TRUE;
 return FALSE;
}
