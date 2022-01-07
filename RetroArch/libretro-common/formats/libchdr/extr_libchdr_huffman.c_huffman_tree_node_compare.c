
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_t {scalar_t__ weight; scalar_t__ bits; } ;


 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int huffman_tree_node_compare(const void *item1, const void *item2)
{
 const struct node_t *node1 = *(const struct node_t **)item1;
 const struct node_t *node2 = *(const struct node_t **)item2;
 if (node2->weight != node1->weight)
  return node2->weight - node1->weight;
 if (node2->bits - node1->bits == 0)
  fprintf(stderr, "identical node sort keys, should not happen!\n");
 return (int)node1->bits - (int)node2->bits;
}
