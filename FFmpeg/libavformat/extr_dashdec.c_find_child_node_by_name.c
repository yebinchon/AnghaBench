
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
struct TYPE_8__ {int name; } ;


 int av_strcasecmp (int ,char const*) ;
 TYPE_1__* xmlFirstElementChild (TYPE_1__*) ;
 TYPE_1__* xmlNextElementSibling (TYPE_1__*) ;

__attribute__((used)) static xmlNodePtr find_child_node_by_name(xmlNodePtr rootnode, const char *nodename)
{
    xmlNodePtr node = rootnode;
    if (!node) {
        return ((void*)0);
    }

    node = xmlFirstElementChild(node);
    while (node) {
        if (!av_strcasecmp(node->name, nodename)) {
            return node;
        }
        node = xmlNextElementSibling(node);
    }
    return ((void*)0);
}
