
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_codecs (int ) ;

int show_decoders(void *optctx, const char *opt, const char *arg)
{
    print_codecs(0);
    return 0;
}
