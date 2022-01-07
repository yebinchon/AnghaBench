
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertf (int ,char*) ;
 int atexit (int ) ;
 int optparse (int *,char**) ;
 int srv ;
 int success ;

void
cttest_optminus()
{
    char *args[] = {
        "-",
        ((void*)0),
    };

    atexit(success);
    optparse(&srv, args);
    assertf(0, "optparse failed to call exit");
}
