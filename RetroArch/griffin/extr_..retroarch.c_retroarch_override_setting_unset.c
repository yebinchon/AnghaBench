
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rarch_override_setting { ____Placeholder_rarch_override_setting } rarch_override_setting ;


 int BIT256_CLEAR (int ,unsigned int) ;
 int has_set_bps_pref ;
 int has_set_ips_pref ;
 int has_set_libretro ;
 int has_set_libretro_device ;
 int has_set_libretro_directory ;
 int has_set_log_to_file ;
 int has_set_netplay_check_frames ;
 int has_set_netplay_ip_address ;
 int has_set_netplay_ip_port ;
 int has_set_netplay_mode ;
 int has_set_netplay_stateless_mode ;
 int has_set_save_path ;
 int has_set_state_path ;
 int has_set_ups_pref ;
 int has_set_verbosity ;

void retroarch_override_setting_unset(enum rarch_override_setting enum_idx, void *data)
{
   switch (enum_idx)
   {
      case 140:
         {
            unsigned *val = (unsigned*)data;
            if (val)
            {
               unsigned bit = *val;
               BIT256_CLEAR(has_set_libretro_device, bit);
            }
         }
         break;
      case 128:
         has_set_verbosity = 0;
         break;
      case 141:
         has_set_libretro = 0;
         break;
      case 139:
         has_set_libretro_directory = 0;
         break;
      case 131:
         has_set_save_path = 0;
         break;
      case 130:
         has_set_state_path = 0;
         break;
      case 134:
         has_set_netplay_mode = 0;
         break;
      case 136:
         has_set_netplay_ip_address = 0;
         break;
      case 135:
         has_set_netplay_ip_port = 0;
         break;
      case 133:
         has_set_netplay_stateless_mode = 0;
         break;
      case 137:
         has_set_netplay_check_frames = 0;
         break;
      case 129:
         has_set_ups_pref = 0;
         break;
      case 143:
         has_set_bps_pref = 0;
         break;
      case 142:
         has_set_ips_pref = 0;
         break;
      case 138:
         has_set_log_to_file = 0;
         break;
      case 132:
      default:
         break;
   }
}
