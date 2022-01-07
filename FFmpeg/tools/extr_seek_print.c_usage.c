
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void usage(int ret)
{
    fprintf(ret ? stderr : stdout,
            "Usage: seek_print file [command ...]\n"
            "Commands:\n"
            "    read\n"
            "    seek:stream:min_ts:ts:max_ts:flags\n"
            );
    exit(ret);
}
