
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int show_value_unit ;
 int use_byte_value_binary_prefix ;
 int use_value_prefix ;
 int use_value_sexagesimal_format ;

__attribute__((used)) static int opt_pretty(void *optctx, const char *opt, const char *arg)
{
    show_value_unit = 1;
    use_value_prefix = 1;
    use_byte_value_binary_prefix = 1;
    use_value_sexagesimal_format = 1;
    return 0;
}
