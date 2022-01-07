
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_report (int *) ;

int opt_report(void *optctx, const char *opt, const char *arg)
{
    return init_report(((void*)0));
}
