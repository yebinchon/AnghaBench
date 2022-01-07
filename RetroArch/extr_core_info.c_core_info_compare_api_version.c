
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum compare_op { ____Placeholder_compare_op } compare_op ;
__attribute__((used)) static bool core_info_compare_api_version(int sys_major, int sys_minor, int major, int minor, enum compare_op op)
{
   switch (op)
   {
      case 133:
         if (sys_major == major && sys_minor == minor)
            return 1;
         break;
      case 128:
         if (!(sys_major == major && sys_minor == minor))
            return 1;
         break;
      case 130:
         if (sys_major < major || (sys_major == major && sys_minor < minor))
            return 1;
         break;
      case 129:
         if (sys_major < major || (sys_major == major && sys_minor <= minor))
            return 1;
         break;
      case 132:
         if (sys_major > major || (sys_major == major && sys_minor > minor))
            return 1;
         break;
      case 131:
         if (sys_major > major || (sys_major == major && sys_minor >= minor))
            return 1;
         break;
      default:
         break;
   }

   return 0;
}
