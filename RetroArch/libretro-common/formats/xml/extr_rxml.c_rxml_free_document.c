
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ root_node; } ;
typedef TYPE_1__ rxml_document_t ;


 int free (TYPE_1__*) ;
 int rxml_free_node (scalar_t__) ;

void rxml_free_document(rxml_document_t *doc)
{
   if (!doc)
      return;

   if (doc->root_node)
      rxml_free_node(doc->root_node);

   free(doc);
}
