
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int node_t ;
struct TYPE_3__ {int ** freelist; int blocPtrs; int ** nodePtrs; } ;
typedef TYPE_1__ huff_t ;



__attribute__((used)) static node_t **get_ppnode(huff_t* huff) {
 node_t **tppnode;
 if (!huff->freelist) {
  return &(huff->nodePtrs[huff->blocPtrs++]);
 } else {
  tppnode = huff->freelist;
  huff->freelist = (node_t **)*tppnode;
  return tppnode;
 }
}
