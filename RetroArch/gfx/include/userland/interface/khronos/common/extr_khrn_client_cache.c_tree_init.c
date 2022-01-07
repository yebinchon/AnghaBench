
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void tree_init(uint8_t *tree, int depth)
{
   int i;

   tree[0] = depth + 1;

   for (i = 1; i < 1 << depth; i++)
      tree[i] = tree[i >> 1] - 1;
}
