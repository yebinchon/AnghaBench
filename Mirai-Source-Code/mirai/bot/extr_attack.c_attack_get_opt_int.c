
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct attack_option {int dummy; } ;


 char* attack_get_opt_str (int ,struct attack_option*,int ,int *) ;
 int util_atoi (char*,int) ;

int attack_get_opt_int(uint8_t opts_len, struct attack_option *opts, uint8_t opt, int def)
{
    char *val = attack_get_opt_str(opts_len, opts, opt, ((void*)0));

    if (val == ((void*)0))
        return def;
    else
        return util_atoi(val, 10);
}
