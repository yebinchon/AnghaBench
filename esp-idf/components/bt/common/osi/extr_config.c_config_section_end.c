
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sections; } ;
typedef TYPE_1__ config_t ;
typedef int config_section_node_t ;


 int assert (int ) ;
 scalar_t__ list_end (int ) ;

const config_section_node_t *config_section_end(const config_t *config)
{
    assert(config != ((void*)0));
    return (const config_section_node_t *)list_end(config->sections);
}
