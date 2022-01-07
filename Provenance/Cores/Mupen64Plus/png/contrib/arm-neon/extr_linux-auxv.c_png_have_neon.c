
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int png_structp ;
struct TYPE_4__ {int a_val; } ;
struct TYPE_5__ {scalar_t__ a_type; TYPE_1__ a_un; } ;
typedef TYPE_2__ Elf32_auxv_t ;


 scalar_t__ AT_HWCAP ;
 int HWCAP_NEON ;
 int O_RDONLY ;
 int close (int) ;
 int open (char*,int ) ;
 int png_warning (int ,char*) ;
 int safe_read (int ,int,TYPE_2__*,int) ;

__attribute__((used)) static int
png_have_neon(png_structp png_ptr)
{
   int fd = open("/proc/self/auxv", O_RDONLY);
   Elf32_auxv_t aux;


   if (fd == -1)
   {
      png_warning(png_ptr, "/proc/self/auxv open failed");
      return 0;
   }

   while (safe_read(png_ptr, fd, &aux, sizeof aux) == sizeof aux)
   {
      if (aux.a_type == AT_HWCAP && (aux.a_un.a_val & HWCAP_NEON) != 0)
      {
         close(fd);
         return 1;
      }
   }

   close(fd);
   return 0;
}
