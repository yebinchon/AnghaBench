
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int main_cmdline (int,char**) ;
 int main_win32 (int,char**,int (*) (int,char**)) ;

int main(int argc, char **argv) {



 return main_cmdline(argc, argv);

}
