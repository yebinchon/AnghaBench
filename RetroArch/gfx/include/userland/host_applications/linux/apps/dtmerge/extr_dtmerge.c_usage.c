
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

__attribute__((used)) static void usage(void)
{
   printf("Usage:\n");
   printf("    dtmerge [<options] <base dtb> <merged dtb> - [param=value] ...\n");
   printf("        to apply a parameter to the base dtb (like dtparam)\n");
   printf("    dtmerge [<options] <base dtb> <merged dtb> <overlay dtb> [param=value] ...\n");
   printf("        to apply an overlay with parameters (like dtoverlay)\n");
   printf("  where <options> is any of:\n");
   printf("    -d      Enable debug output\n");
   printf("    -h      Show this help message\n");
   exit(1);
}
