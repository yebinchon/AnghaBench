
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ filesize; scalar_t__ wantsync; scalar_t__ use; int * dir; } ;
struct TYPE_5__ {TYPE_1__ wal; int * user; int * addr; int port; } ;


 scalar_t__ Filesizedef ;
 scalar_t__ JOB_DATA_SIZE_LIMIT_DEFAULT ;
 int Portdef ;
 int assert (int) ;
 scalar_t__ job_data_size_limit ;
 int optparse (TYPE_2__*,char**) ;
 TYPE_2__ srv ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ verbose ;

void
cttest_opt_none()
{
    char *args[] = {
        ((void*)0),
    };

    optparse(&srv, args);
    assert(strcmp(srv.port, Portdef) == 0);
    assert(srv.addr == ((void*)0));
    assert(job_data_size_limit == JOB_DATA_SIZE_LIMIT_DEFAULT);
    assert(srv.wal.filesize == Filesizedef);
    assert(srv.wal.wantsync == 0);
    assert(srv.user == ((void*)0));
    assert(srv.wal.dir == ((void*)0));
    assert(srv.wal.use == 0);
    assert(verbose == 0);
}
