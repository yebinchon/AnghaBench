#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  png_structp ;
struct TYPE_4__ {int a_val; } ;
struct TYPE_5__ {scalar_t__ a_type; TYPE_1__ a_un; } ;
typedef  TYPE_2__ Elf32_auxv_t ;

/* Variables and functions */
 scalar_t__ AT_HWCAP ; 
 int HWCAP_NEON ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,TYPE_2__*,int) ; 

__attribute__((used)) static int
FUNC4(png_structp png_ptr)
{
   int fd = FUNC1("/proc/self/auxv", O_RDONLY);
   Elf32_auxv_t aux;

   /* Failsafe: failure to open means no NEON */
   if (fd == -1)
   {
      FUNC2(png_ptr, "/proc/self/auxv open failed");
      return 0;
   }

   while (FUNC3(png_ptr, fd, &aux, sizeof aux) == sizeof aux)
   {
      if (aux.a_type == AT_HWCAP && (aux.a_un.a_val & HWCAP_NEON) != 0)
      {
         FUNC0(fd);
         return 1;
      }
   }

   FUNC0(fd);
   return 0;
}