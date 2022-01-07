
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ssize_t ;


 int MSG_DID_NOT_FIND_A_VALID_CONTENT_PATCH ;
 int MSG_SEVERAL_PATCHES_ARE_EXPLICITLY_DEFINED ;
 int RARCH_LOG (char*,int ) ;
 int RARCH_WARN (char*,int ) ;
 int msg_hash_to_str (int ) ;
 int try_bps_patch (int,char const*,int **,int *) ;
 int try_ips_patch (int,char const*,int **,int *) ;
 int try_ups_patch (int,char const*,int **,int *) ;

__attribute__((used)) static bool patch_content(
      bool is_ips_pref,
      bool is_bps_pref,
      bool is_ups_pref,
      const char *name_ips,
      const char *name_bps,
      const char *name_ups,
      uint8_t **buf,
      void *data)
{
   ssize_t *size = (ssize_t*)data;
   bool allow_ups = !is_bps_pref && !is_ips_pref;
   bool allow_ips = !is_ups_pref && !is_bps_pref;
   bool allow_bps = !is_ups_pref && !is_ips_pref;

   if ( (unsigned)is_ips_pref
         + (unsigned)is_bps_pref
         + (unsigned)is_ups_pref > 1)
   {
      RARCH_WARN("%s\n",
            msg_hash_to_str(MSG_SEVERAL_PATCHES_ARE_EXPLICITLY_DEFINED));
      return 0;
   }

   if ( !try_ips_patch(allow_ips, name_ips, buf, size)
         && !try_bps_patch(allow_bps, name_bps, buf, size)
         && !try_ups_patch(allow_ups, name_ups, buf, size))
   {
      RARCH_LOG("%s\n",
            msg_hash_to_str(MSG_DID_NOT_FIND_A_VALID_CONTENT_PATCH));
      return 0;
   }

   return 1;
}
