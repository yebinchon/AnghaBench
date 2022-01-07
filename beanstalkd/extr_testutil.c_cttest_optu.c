
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user; } ;


 int assert (int) ;
 int optparse (TYPE_1__*,char**) ;
 TYPE_1__ srv ;
 scalar_t__ strcmp (int ,char*) ;

void
cttest_optu()
{
    char *args[] = {
        "-ukr",
        ((void*)0),
    };

    optparse(&srv, args);
    assert(strcmp(srv.user, "kr") == 0);
}
