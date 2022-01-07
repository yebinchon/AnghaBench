
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_section_node_t ;
typedef int btc_config_section_iter_t ;


 int assert (int ) ;
 int * config ;
 scalar_t__ config_section_next (int const*) ;

const btc_config_section_iter_t *btc_config_section_next(const btc_config_section_iter_t *section)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));
    return (const btc_config_section_iter_t *)config_section_next((const config_section_node_t *)section);
}
