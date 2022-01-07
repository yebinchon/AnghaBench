
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D_DoomMain () ;
 int myargc ;
 char** myargv ;

int
main
( int argc,
  char** argv )
{
    myargc = argc;
    myargv = argv;

    D_DoomMain ();

    return 0;
}
