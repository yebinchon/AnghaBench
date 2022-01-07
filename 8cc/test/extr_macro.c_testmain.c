
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cond_incl () ;
 int const_expr () ;
 int counter () ;
 int defined () ;
 int empty () ;
 int funclike () ;
 int gnuext () ;
 int ifdef () ;
 int include () ;
 int loop () ;
 int noarg () ;
 int null () ;
 int predefined () ;
 int print (char*) ;
 int simple () ;
 int special () ;
 int undef () ;

void testmain() {
    print("macros");
    special();
    include();
    predefined();
    simple();
    loop();
    undef();
    cond_incl();
    const_expr();
    defined();
    ifdef();
    funclike();
    empty();
    noarg();
    null();
    counter();
    gnuext();
}
