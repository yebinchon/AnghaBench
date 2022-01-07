
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_t ;


 int assert (int ) ;
 int config_set_string (int *,char const*,char const*,char*,int) ;
 int sprintf (char*,char*,int) ;

void config_set_int(config_t *config, const char *section, const char *key, int value)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));
    assert(key != ((void*)0));

    char value_str[32] = { 0 };
    sprintf(value_str, "%d", value);
    config_set_string(config, section, key, value_str, 0);
}
