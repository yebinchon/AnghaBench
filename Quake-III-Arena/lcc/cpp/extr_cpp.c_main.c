
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int Tokenrow ;


 int BUFSIZ ;
 int ctime (int *) ;
 int curtime ;
 int exit (int) ;
 int expandlex () ;
 int fflush (int ) ;
 int fixlex () ;
 int flushout () ;
 int genline () ;
 int iniths () ;
 int maketokenrow (int,int *) ;
 scalar_t__ nerrs ;
 int process (int *) ;
 int setbuf (int ,char*) ;
 int setup (int,char**) ;
 int stderr ;
 int time (int *) ;

int
main(int argc, char **argv)
{
 Tokenrow tr;
 time_t t;
 char ebuf[BUFSIZ];

 setbuf(stderr, ebuf);
 t = time(((void*)0));
 curtime = ctime(&t);
 maketokenrow(3, &tr);
 expandlex();
 setup(argc, argv);
 fixlex();
 iniths();
 genline();
 process(&tr);
 flushout();
 fflush(stderr);
 exit(nerrs > 0);
 return 0;
}
