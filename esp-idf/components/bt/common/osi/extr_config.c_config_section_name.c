
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;
typedef TYPE_1__ section_t ;
typedef int list_node_t ;
typedef int config_section_node_t ;


 int assert (int ) ;
 scalar_t__ list_node (int const*) ;

const char *config_section_name(const config_section_node_t *node)
{
    assert(node != ((void*)0));
    const list_node_t *lnode = (const list_node_t *)node;
    const section_t *section = (const section_t *)list_node(lnode);
    return section->name;
}
