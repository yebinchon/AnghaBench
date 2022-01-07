
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int btc_config_section_iter_t ;


 int assert (int ) ;
 int * config ;
 scalar_t__ config_section_end (int *) ;

const btc_config_section_iter_t *btc_config_section_end(void)
{
    assert(config != ((void*)0));
    return (const btc_config_section_iter_t *)config_section_end(config);
}
