
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int use; int dir; } ;
struct TYPE_5__ {TYPE_1__ wal; } ;


 int assert (int) ;
 int optparse (TYPE_2__*,char**) ;
 TYPE_2__ srv ;
 scalar_t__ strcmp (int ,char*) ;

void
cttest_optb()
{
    char *args[] = {
        "-bfoo",
        ((void*)0),
    };

    optparse(&srv, args);
    assert(strcmp(srv.wal.dir, "foo") == 0);
    assert(srv.wal.use == 1);
}
