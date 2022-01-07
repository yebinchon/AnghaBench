
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int citus_tag; } ;
typedef int Node ;
typedef TYPE_1__ CitusNode ;



__attribute__((used)) static inline Node *
CitusSetTag(Node *node, int tag)
{
 CitusNode *citus_node = (CitusNode *) node;
 citus_node->citus_tag = tag;
 return node;
}
