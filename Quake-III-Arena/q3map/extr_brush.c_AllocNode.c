
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_t ;


 int * malloc (int) ;
 int memset (int *,int ,int) ;

node_t *AllocNode (void)
{
 node_t *node;

 node = malloc(sizeof(*node));
 memset (node, 0, sizeof(*node));

 return node;
}
