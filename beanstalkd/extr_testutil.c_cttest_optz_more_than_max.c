
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int job_data_size_limit ;
 int optparse (int *,char**) ;
 int srv ;

void
cttest_optz_more_than_max()
{
    char *args[] = {
        "-z1073741825",
        ((void*)0),
    };

    optparse(&srv, args);
    assert(job_data_size_limit == 1073741824);
}
