
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int * config ;
 int config_remove_section (int *,char const*) ;

bool btc_config_remove_section(const char *section)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));

    return config_remove_section(config, section);
}
