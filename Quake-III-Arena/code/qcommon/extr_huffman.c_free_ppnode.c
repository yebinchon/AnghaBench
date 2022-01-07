
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int node_t ;
struct TYPE_3__ {int ** freelist; } ;
typedef TYPE_1__ huff_t ;



__attribute__((used)) static void free_ppnode(huff_t* huff, node_t **ppnode) {
 *ppnode = (node_t *)huff->freelist;
 huff->freelist = ppnode;
}
