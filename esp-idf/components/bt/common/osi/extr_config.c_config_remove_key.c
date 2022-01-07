
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entries; } ;
typedef TYPE_1__ section_t ;
typedef int entry_t ;
typedef int config_t ;


 int assert (int ) ;
 int * entry_find (int *,char const*,char const*) ;
 int list_remove (int ,int *) ;
 TYPE_1__* section_find (int *,char const*) ;

bool config_remove_key(config_t *config, const char *section, const char *key)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));
    assert(key != ((void*)0));

    section_t *sec = section_find(config, section);
    entry_t *entry = entry_find(config, section, key);
    if (!sec || !entry) {
        return 0;
    }

    return list_remove(sec->entries, entry);
}
