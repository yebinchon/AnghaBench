
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPT_INT ;
 scalar_t__ SHOW_MODE_NB ;
 int SHOW_MODE_RDFT ;
 int SHOW_MODE_VIDEO ;
 int SHOW_MODE_WAVES ;
 int parse_number_or_die (char const*,char const*,int ,int ,scalar_t__) ;
 int show_mode ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int opt_show_mode(void *optctx, const char *opt, const char *arg)
{
    show_mode = !strcmp(arg, "video") ? SHOW_MODE_VIDEO :
                !strcmp(arg, "waves") ? SHOW_MODE_WAVES :
                !strcmp(arg, "rdft" ) ? SHOW_MODE_RDFT :
                parse_number_or_die(opt, arg, OPT_INT, 0, SHOW_MODE_NB-1);
    return 0;
}
