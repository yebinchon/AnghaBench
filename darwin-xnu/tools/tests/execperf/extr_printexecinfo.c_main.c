
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printdyldinfo () ;
 int printexecinfo () ;

int main(int argc, char *argv[]) {

 printexecinfo();
 printdyldinfo();

 return 0;
}
