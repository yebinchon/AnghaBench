
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rxml_document_t ;


 int fprintf (int ,char*,char const*) ;
 int print_siblings (int ,int ) ;
 int rxml_free_document (int *) ;
 int * rxml_load_document (char const*) ;
 int rxml_root_node (int *) ;
 int stderr ;

__attribute__((used)) static void rxml_log_document(const char *path)
{
   rxml_document_t *doc = rxml_load_document(path);
   if (!doc)
   {
      fprintf(stderr, "rxml: Failed to load document: %s\n", path);
      return;
   }

   print_siblings(rxml_root_node(doc), 0);
   rxml_free_document(doc);
}
