#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct utsname {char* machine; } ;
typedef  enum frontend_architecture { ____Placeholder_frontend_architecture } frontend_architecture ;

/* Variables and functions */
 int FRONTEND_ARCH_ARM ; 
 int FRONTEND_ARCH_ARMV7 ; 
 int FRONTEND_ARCH_ARMV8 ; 
 int FRONTEND_ARCH_MIPS ; 
 int FRONTEND_ARCH_NONE ; 
 int FRONTEND_ARCH_PPC ; 
 int FRONTEND_ARCH_TILE ; 
 int FRONTEND_ARCH_X86 ; 
 int FRONTEND_ARCH_X86_64 ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (struct utsname*) ; 

__attribute__((used)) static enum frontend_architecture FUNC2(void)
{
   struct utsname buffer;
   const char *val        = NULL;

   if (FUNC1(&buffer) != 0)
      return FRONTEND_ARCH_NONE;

   val         = buffer.machine;

   if (FUNC0(val, "aarch64"))
      return FRONTEND_ARCH_ARMV8;
   else if (
         FUNC0(val, "armv7l") ||
         FUNC0(val, "armv7b")
      )
      return FRONTEND_ARCH_ARMV7;
   else if (
         FUNC0(val, "armv6l") ||
         FUNC0(val, "armv6b") ||
         FUNC0(val, "armv5tel") ||
         FUNC0(val, "arm")
      )
      return FRONTEND_ARCH_ARM;
   else if (FUNC0(val, "x86_64"))
      return FRONTEND_ARCH_X86_64;
   else if (FUNC0(val, "x86"))
         return FRONTEND_ARCH_X86;
   else if (FUNC0(val, "ppc64"))
         return FRONTEND_ARCH_PPC;
   else if (FUNC0(val, "mips"))
         return FRONTEND_ARCH_MIPS;
   else if (FUNC0(val, "tile"))
         return FRONTEND_ARCH_TILE;

   return FRONTEND_ARCH_NONE;
}