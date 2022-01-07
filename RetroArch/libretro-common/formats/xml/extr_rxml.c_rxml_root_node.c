
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rxml_node {int dummy; } ;
struct TYPE_3__ {struct rxml_node* root_node; } ;
typedef TYPE_1__ rxml_document_t ;



struct rxml_node *rxml_root_node(rxml_document_t *doc)
{
   if (doc)
      return doc->root_node;
   return ((void*)0);
}
