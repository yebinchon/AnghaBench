
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* read_from_shell_command (char*,int,char*) ;

const char *get_default_ext_if_name(void)
{
    static char if_name[64];






    return read_from_shell_command(if_name, sizeof if_name,
                                   "ip route show default 2>/dev/null|awk '/default/{print $5}'");



}
