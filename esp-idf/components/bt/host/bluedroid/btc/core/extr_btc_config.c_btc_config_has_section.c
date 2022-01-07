
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int * config ;
 int config_has_section (int *,char const*) ;

bool btc_config_has_section(const char *section)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));

    return config_has_section(config, section);
}
