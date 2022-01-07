
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ node_t ;


 TYPE_1__* p_firstnode ;
 int * p_lastnode ;

node_t *P_NextNodeFromList(void)
{
 node_t *node;

 node = p_firstnode;
 if (p_firstnode) p_firstnode = p_firstnode->next;
 if (!p_firstnode) p_lastnode = ((void*)0);
 return node;
}
