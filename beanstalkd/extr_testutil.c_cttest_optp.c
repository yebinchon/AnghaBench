
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port; } ;


 int assert (int) ;
 int optparse (TYPE_1__*,char**) ;
 TYPE_1__ srv ;
 scalar_t__ strcmp (int ,char*) ;

void
cttest_optp()
{
    char *args[] = {
        "-p1234",
        ((void*)0),
    };

    optparse(&srv, args);
    assert(strcmp(srv.port, "1234") == 0);
}
