
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int optparse (int *,char**) ;
 int srv ;
 int verbose ;

void
cttest_optV_V()
{
    char *args[] = {
        "-V",
        "-V",
        ((void*)0),
    };

    optparse(&srv, args);
    assert(verbose == 2);
}
