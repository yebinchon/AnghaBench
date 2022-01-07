
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_arguments (int*,char***) ;
 int main_exit (int *) ;
 int main_loop () ;
 int main_setup () ;
 int main_teardown () ;
 int rarch_main (int,char**,int *) ;

int main(int argc, char **argv)
{
   main_setup();
   get_arguments(&argc, &argv);





   rarch_main(argc, argv, ((void*)0));
   main_loop();
   main_exit(((void*)0));

   main_teardown();



   return 0;
}
