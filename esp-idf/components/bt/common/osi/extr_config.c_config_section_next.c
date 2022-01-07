
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_node_t ;
typedef int config_section_node_t ;


 int assert (int ) ;
 scalar_t__ list_next (int const*) ;

const config_section_node_t *config_section_next(const config_section_node_t *node)
{
    assert(node != ((void*)0));
    return (const config_section_node_t *)list_next((const list_node_t *)node);
}
