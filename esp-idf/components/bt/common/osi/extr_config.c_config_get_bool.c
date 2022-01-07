
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
typedef TYPE_1__ entry_t ;
typedef int config_t ;


 int assert (int ) ;
 TYPE_1__* entry_find (int const*,char const*,char const*) ;
 int strcmp (int ,char*) ;

bool config_get_bool(const config_t *config, const char *section, const char *key, bool def_value)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));
    assert(key != ((void*)0));

    entry_t *entry = entry_find(config, section, key);
    if (!entry) {
        return def_value;
    }

    if (!strcmp(entry->value, "true")) {
        return 1;
    }
    if (!strcmp(entry->value, "false")) {
        return 0;
    }

    return def_value;
}
