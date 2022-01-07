
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int entries; int value; int key; } ;
typedef TYPE_1__ section_t ;
typedef int list_node_t ;
typedef TYPE_1__ entry_t ;
struct TYPE_13__ {int sections; } ;
typedef TYPE_3__ config_t ;


 TYPE_1__* entry_new (char const*,char const*) ;
 int list_append (int ,TYPE_1__*) ;
 int * list_begin (int ) ;
 int const* list_end (int ) ;
 int * list_next (int const*) ;
 TYPE_1__* list_node (int const*) ;
 int list_prepend (int ,TYPE_1__*) ;
 int osi_free (int ) ;
 int osi_strdup (char const*) ;
 TYPE_1__* section_find (TYPE_3__*,char const*) ;
 TYPE_1__* section_new (char const*) ;
 int strcmp (int ,char const*) ;

void config_set_string(config_t *config, const char *section, const char *key, const char *value, bool insert_back)
{
    section_t *sec = section_find(config, section);
    if (!sec) {
        sec = section_new(section);
        if (insert_back) {
            list_append(config->sections, sec);
        } else {
            list_prepend(config->sections, sec);
        }
    }

    for (const list_node_t *node = list_begin(sec->entries); node != list_end(sec->entries); node = list_next(node)) {
        entry_t *entry = list_node(node);
        if (!strcmp(entry->key, key)) {
            osi_free(entry->value);
            entry->value = osi_strdup(value);
            return;
        }
    }

    entry_t *entry = entry_new(key, value);
    list_append(sec->entries, entry);
}
