
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {char* machine; } ;
typedef enum frontend_architecture { ____Placeholder_frontend_architecture } frontend_architecture ;


 int FRONTEND_ARCH_ARM ;
 int FRONTEND_ARCH_ARMV7 ;
 int FRONTEND_ARCH_ARMV8 ;
 int FRONTEND_ARCH_MIPS ;
 int FRONTEND_ARCH_NONE ;
 int FRONTEND_ARCH_PPC ;
 int FRONTEND_ARCH_TILE ;
 int FRONTEND_ARCH_X86 ;
 int FRONTEND_ARCH_X86_64 ;
 scalar_t__ string_is_equal (char const*,char*) ;
 scalar_t__ uname (struct utsname*) ;

__attribute__((used)) static enum frontend_architecture frontend_unix_get_architecture(void)
{
   struct utsname buffer;
   const char *val = ((void*)0);

   if (uname(&buffer) != 0)
      return FRONTEND_ARCH_NONE;

   val = buffer.machine;

   if (string_is_equal(val, "aarch64"))
      return FRONTEND_ARCH_ARMV8;
   else if (
         string_is_equal(val, "armv7l") ||
         string_is_equal(val, "armv7b")
      )
      return FRONTEND_ARCH_ARMV7;
   else if (
         string_is_equal(val, "armv6l") ||
         string_is_equal(val, "armv6b") ||
         string_is_equal(val, "armv5tel") ||
         string_is_equal(val, "arm")
      )
      return FRONTEND_ARCH_ARM;
   else if (string_is_equal(val, "x86_64"))
      return FRONTEND_ARCH_X86_64;
   else if (string_is_equal(val, "x86"))
         return FRONTEND_ARCH_X86;
   else if (string_is_equal(val, "ppc64"))
         return FRONTEND_ARCH_PPC;
   else if (string_is_equal(val, "mips"))
         return FRONTEND_ARCH_MIPS;
   else if (string_is_equal(val, "tile"))
         return FRONTEND_ARCH_TILE;

   return FRONTEND_ARCH_NONE;
}
