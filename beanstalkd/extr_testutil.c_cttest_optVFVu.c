
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ wantsync; } ;
struct TYPE_5__ {int user; TYPE_1__ wal; } ;


 int assert (int) ;
 int optparse (TYPE_2__*,char**) ;
 TYPE_2__ srv ;
 scalar_t__ strcmp (int ,char*) ;
 int verbose ;

void
cttest_optVFVu()
{
    char *args[] = {
        "-VFVukr",
        ((void*)0),
    };

    optparse(&srv, args);
    assert(verbose == 2);
    assert(srv.wal.wantsync == 0);
    assert(strcmp(srv.user, "kr") == 0);
}
