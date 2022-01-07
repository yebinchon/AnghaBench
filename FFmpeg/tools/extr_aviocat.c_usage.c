
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static int usage(const char *argv0, int ret)
{
    fprintf(stderr, "%s [-b bytespersec] [-d duration] [-oi <options>] [-oo <options>] [-v] input_url output_url\n", argv0);
    fprintf(stderr, "<options>: AVOptions expressed as key=value, :-separated\n");
    return ret;
}
