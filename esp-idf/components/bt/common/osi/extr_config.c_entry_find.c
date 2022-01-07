
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int entries; } ;
typedef TYPE_1__ section_t ;
typedef int list_node_t ;
struct TYPE_7__ {int key; } ;
typedef TYPE_2__ entry_t ;
typedef int config_t ;


 int * list_begin (int ) ;
 int const* list_end (int ) ;
 int * list_next (int const*) ;
 TYPE_2__* list_node (int const*) ;
 TYPE_1__* section_find (int const*,char const*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static entry_t *entry_find(const config_t *config, const char *section, const char *key)
{
    section_t *sec = section_find(config, section);
    if (!sec) {
        return ((void*)0);
    }

    for (const list_node_t *node = list_begin(sec->entries); node != list_end(sec->entries); node = list_next(node)) {
        entry_t *entry = list_node(node);
        if (!strcmp(entry->key, key)) {
            return entry;
        }
    }

    return ((void*)0);
}
