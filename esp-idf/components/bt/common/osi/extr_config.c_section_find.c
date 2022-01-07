
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
typedef TYPE_1__ section_t ;
typedef int list_node_t ;
struct TYPE_7__ {int sections; } ;
typedef TYPE_2__ config_t ;


 int * list_begin (int ) ;
 int const* list_end (int ) ;
 int * list_next (int const*) ;
 TYPE_1__* list_node (int const*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static section_t *section_find(const config_t *config, const char *section)
{
    for (const list_node_t *node = list_begin(config->sections); node != list_end(config->sections); node = list_next(node)) {
        section_t *sec = list_node(node);
        if (!strcmp(sec->name, section)) {
            return sec;
        }
    }

    return ((void*)0);
}
