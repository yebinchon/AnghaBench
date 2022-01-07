
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum BootDeviceIDs { ____Placeholder_BootDeviceIDs } BootDeviceIDs ;
 char* DEVICE_CDFS_PATH ;
 char* DEVICE_CDROM_PATH ;
 char* DEVICE_HDD0_PATH ;
 char* DEVICE_HDD_PATH ;
 char* DEVICE_HOST0_PATH ;
 char* DEVICE_HOST1_PATH ;
 char* DEVICE_HOST2_PATH ;
 char* DEVICE_HOST3_PATH ;
 char* DEVICE_HOST4_PATH ;
 char* DEVICE_HOST5_PATH ;
 char* DEVICE_HOST6_PATH ;
 char* DEVICE_HOST7_PATH ;
 char* DEVICE_HOST8_PATH ;
 char* DEVICE_HOST9_PATH ;
 char* DEVICE_HOST_PATH ;
 char* DEVICE_MASS_PATH ;
 char* DEVICE_MC0_PATH ;
 char* DEVICE_MC1_PATH ;

char *rootDevicePath(enum BootDeviceIDs device_id)
{
   switch (device_id)
   {
      case 129:
         return DEVICE_MC0_PATH;
      case 128:
         return DEVICE_MC1_PATH;
      case 145:
         return DEVICE_CDROM_PATH;
      case 146:
         return DEVICE_CDFS_PATH;
      case 131:
         return DEVICE_MASS_PATH;
      case 130:
         return DEVICE_MASS_PATH;
      case 144:
         return DEVICE_HDD_PATH;
      case 143:
         return DEVICE_HDD0_PATH;
      case 142:
         return DEVICE_HOST_PATH;
      case 141:
         return DEVICE_HOST0_PATH;
      case 140:
         return DEVICE_HOST1_PATH;
      case 139:
         return DEVICE_HOST2_PATH;
      case 138:
         return DEVICE_HOST3_PATH;
      case 137:
         return DEVICE_HOST4_PATH;
      case 136:
         return DEVICE_HOST5_PATH;
      case 135:
         return DEVICE_HOST6_PATH;
      case 134:
         return DEVICE_HOST7_PATH;
      case 133:
         return DEVICE_HOST8_PATH;
      case 132:
         return DEVICE_HOST9_PATH;
      default:
         return "";
   }
}
