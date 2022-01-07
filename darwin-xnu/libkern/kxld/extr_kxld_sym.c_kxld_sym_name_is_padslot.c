
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int RESERVED_TOKEN ;
 int check (char const*) ;
 scalar_t__ kxld_strstr (char const*,int ) ;

boolean_t
kxld_sym_name_is_padslot(const char *name)
{
    check(name);

    return (kxld_strstr(name, RESERVED_TOKEN) != 0);
}
