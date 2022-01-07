
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ident; } ;
typedef TYPE_1__ frontend_ctx_driver_t ;
typedef enum frontend_architecture { ____Placeholder_frontend_architecture } frontend_architecture ;
typedef int architecture ;
 int MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE ;
 int PATH_MAX_LENGTH ;
 int frontend_driver_get_cpu_architecture () ;
 TYPE_1__* frontend_get_ptr () ;
 char* msg_hash_to_str (int ) ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 int strlcpy (char*,char*,int) ;

void netplay_get_architecture(char *frontend_architecture, size_t size)
{
   const frontend_ctx_driver_t
      *frontend = frontend_get_ptr();
   enum frontend_architecture arch = frontend_driver_get_cpu_architecture();
   char architecture[PATH_MAX_LENGTH];

   switch (arch)
   {
      case 129:
         strlcpy(architecture, "x86", sizeof(architecture));
         break;
      case 128:
         strlcpy(architecture, "x64", sizeof(architecture));
         break;
      case 131:
         strlcpy(architecture, "PPC", sizeof(architecture));
         break;
      case 136:
         strlcpy(architecture, "ARM", sizeof(architecture));
         break;
      case 135:
         strlcpy(architecture, "ARMv7", sizeof(architecture));
         break;
      case 134:
         strlcpy(architecture, "ARMv8", sizeof(architecture));
         break;
      case 133:
         strlcpy(architecture, "MIPS", sizeof(architecture));
         break;
      case 130:
         strlcpy(architecture, "Tilera", sizeof(architecture));
         break;
      case 132:
      default:
         strlcpy(architecture,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE),
               sizeof(architecture));
         break;
   }
   snprintf(frontend_architecture, size, "%s %s", frontend->ident, architecture);
}
