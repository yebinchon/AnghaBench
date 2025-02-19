
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlNodePtr ;


 char* xmlGetProp (scalar_t__,char const*) ;

__attribute__((used)) static char *get_val_from_nodes_tab(xmlNodePtr *nodes, const int n_nodes, const char *attrname)
{
    int i;
    char *val;

    for (i = 0; i < n_nodes; ++i) {
        if (nodes[i]) {
            val = xmlGetProp(nodes[i], attrname);
            if (val)
                return val;
        }
    }

    return ((void*)0);
}
