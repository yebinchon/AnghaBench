
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_t ;


 int assert (int ) ;
 int * section_find (int const*,char const*) ;

bool config_has_section(const config_t *config, const char *section)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));

    return (section_find(config, section) != ((void*)0));
}
