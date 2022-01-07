
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int * config ;
 int config_set_int (int *,char const*,char const*,int) ;

bool btc_config_set_int(const char *section, const char *key, int value)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));
    assert(key != ((void*)0));

    config_set_int(config, section, key, value);

    return 1;
}
