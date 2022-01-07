
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxml_node {struct rxml_attrib_node* attrib; } ;
struct rxml_attrib_node {char const* value; int attrib; struct rxml_attrib_node* next; } ;


 scalar_t__ string_is_equal (char const*,int ) ;

const char *rxml_node_attrib(struct rxml_node *node, const char *attrib)
{
   struct rxml_attrib_node *attribs = ((void*)0);
   for (attribs = node->attrib; attribs; attribs = attribs->next)
   {
      if (string_is_equal(attrib, attribs->attrib))
         return attribs->value;
   }

   return ((void*)0);
}
