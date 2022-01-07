
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void usage(void)
{
    printf("Usage: iconify [-h] [-f [-a] [-n]]\n");
    printf("Options:\n");
    printf("  -a create windows for all monitors\n");
    printf("  -f create full screen window(s)\n");
    printf("  -h show this help\n");
    printf("  -n no automatic iconification of full screen windows\n");
}
