
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int section_t ;
struct TYPE_4__ {int sections; } ;
typedef TYPE_1__ config_t ;


 int assert (int ) ;
 int list_remove (int ,int *) ;
 int * section_find (TYPE_1__*,char const*) ;

bool config_remove_section(config_t *config, const char *section)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));

    section_t *sec = section_find(config, section);
    if (!sec) {
        return 0;
    }

    return list_remove(config->sections, sec);
}
