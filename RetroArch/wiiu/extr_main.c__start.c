
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSRelaunchTitle (int ,int ) ;
 int __fini () ;
 int __init () ;
 int exit (int ) ;
 int fsdev_exit () ;
 int fsdev_init () ;
 int main (int,char**) ;
 int memoryInitialize () ;
 int memoryRelease () ;

__attribute__((noreturn))
void _start(int argc, char **argv)
{
   memoryInitialize();
   __init();
   fsdev_init();
   main(argc, argv);
   fsdev_exit();
   __fini();
   memoryRelease();
   SYSRelaunchTitle(0, 0);
   exit(0);
}
