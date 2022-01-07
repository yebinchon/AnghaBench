
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_section_node_t ;
typedef int btc_config_section_iter_t ;


 int assert (int ) ;
 int * config ;
 char const* config_section_name (int const*) ;

const char *btc_config_section_name(const btc_config_section_iter_t *section)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));
    return config_section_name((const config_section_node_t *)section);
}
