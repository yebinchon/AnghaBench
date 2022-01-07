
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getpid () ;
 int main_process_pid ;
 int vchiq_test (int,char**) ;
 int vcos_init () ;
 scalar_t__ vcos_use_android_log ;

int main(int argc, char **argv)
{




   vcos_init();
   vcos_use_android_log = 0;
   return vchiq_test(argc, argv);
}
