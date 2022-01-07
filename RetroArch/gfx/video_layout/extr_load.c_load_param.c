
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scope_t ;
typedef int rxml_node_t ;


 int RARCH_LOG (char*,...) ;
 char* rxml_node_attrib (int *,char*) ;
 int scope_eval (int *,char const*) ;
 int scope_generator (int *,char const*,char const*,char const*,char const*,char const*) ;
 int scope_param (int *,char const*,char const*) ;

__attribute__((used)) static bool load_param(scope_t *scope, rxml_node_t *node, bool can_repeat)
{
   const char *name;
   const char *value;
   const char *start;

   if (!(name = rxml_node_attrib(node, "name")))
   {
      RARCH_LOG("video_layout: <param> is missing 'name' attribute\n");
      return 0;
   }

   value = rxml_node_attrib(node, "value");
   start = rxml_node_attrib(node, "start");

   if (can_repeat && start)
   {
      const char *inc = rxml_node_attrib(node, "increment");
      const char *ls = rxml_node_attrib(node, "lshift");
      const char *rs = rxml_node_attrib(node, "rshift");

      if (inc || ls || rs)
      {
         scope_generator(scope, name, start, inc, ls, rs);
      }
      else
      {
         RARCH_LOG("video_layout: invalid generator <param name=\"%s\" /> missing increment/shift\n",
            scope_eval(scope, name));
         return 0;
      }
   }
   else if (name && value)
   {
      scope_param(scope, name, value);
   }
   else
   {
      RARCH_LOG("video_layout: invalid parameter <param name=\"%s\" /> missing value\n",
         scope_eval(scope, name));
      return 0;
   }

   return 1;
}
