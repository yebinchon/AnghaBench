
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __environ_allocated ;
 scalar_t__ environ ;
 int exit (int) ;
 void* fdopen (int,char*) ;
 int main (int,char**) ;
 void* stderr ;
 void* stdin ;
 void* stdout ;

void _start(int argc, char** argv) {
 stdout=fdopen(0,"rw");
 stdin=fdopen(1,"rw");
 stderr=fdopen(2,"rw");
 int error;
    environ = 0;
    __environ_allocated = 0;



    error = main( argc, argv);



    exit( error );
}
