
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; int entries; } ;
typedef TYPE_1__ section_t ;
typedef int list_node_t ;
struct TYPE_6__ {char* key; char* value; } ;
typedef TYPE_2__ entry_t ;
struct TYPE_7__ {int sections; } ;
typedef TYPE_3__ config_t ;


 int assert (int ) ;
 int * list_begin (int ) ;
 int const* list_end (int ) ;
 int const* list_next (int const*) ;
 scalar_t__ list_node (int const*) ;
 int strlen (char*) ;

__attribute__((used)) static int get_config_size(const config_t *config)
{
    assert(config != ((void*)0));

    int w_len = 0, total_size = 0;

    for (const list_node_t *node = list_begin(config->sections); node != list_end(config->sections); node = list_next(node)) {
        const section_t *section = (const section_t *)list_node(node);
        w_len = strlen(section->name) + strlen("[]\n");
        total_size += w_len;

        for (const list_node_t *enode = list_begin(section->entries); enode != list_end(section->entries); enode = list_next(enode)) {
            const entry_t *entry = (const entry_t *)list_node(enode);
            w_len = strlen(entry->key) + strlen(entry->value) + strlen(" = \n");
            total_size += w_len;
        }


        if (list_next(node) != list_end(config->sections)) {
                total_size ++;
        } else {
            break;
        }
    }
    total_size ++;
    return total_size;
}
