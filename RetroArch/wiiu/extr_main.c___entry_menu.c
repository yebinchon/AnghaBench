
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InitFunctionPointers () ;
 int __fini () ;
 int __init () ;
 int fsdev_exit () ;
 int fsdev_init () ;
 int main (int,char**) ;
 int memoryInitialize () ;
 int memoryRelease () ;

int __entry_menu(int argc, char **argv)
{
   int ret;

   InitFunctionPointers();
   memoryInitialize();
   __init();
   fsdev_init();

   ret = main(argc, argv);

   fsdev_exit();
   __fini();
   memoryRelease();
   return ret;
}
