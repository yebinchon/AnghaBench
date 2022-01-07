
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_t ;


 int * GetMemory (int) ;
 scalar_t__ MemorySize (int *) ;
 int c_nodememory ;
 int memset (int *,int ,int) ;
 int numthreads ;

node_t *AllocNode (void)
{
 node_t *node;

 node = GetMemory(sizeof(*node));
 memset (node, 0, sizeof(*node));
 if (numthreads == 1)
 {
  c_nodememory += MemorySize(node);
 }
 return node;
}
