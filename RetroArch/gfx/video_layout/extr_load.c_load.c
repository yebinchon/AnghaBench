
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int view_array_t ;
typedef int scope_t ;
struct TYPE_6__ {int name; } ;
typedef TYPE_1__ rxml_node_t ;
typedef int rxml_document_t ;


 int RARCH_LOG (char*) ;
 int init_device_params (int *) ;
 int init_screen_params (int *,int) ;
 int load_top_level (int *,int*,TYPE_1__*) ;
 int load_views (int *,int *,TYPE_1__*) ;
 int rxml_node_attrib (TYPE_1__*,char*) ;
 TYPE_1__* rxml_root_node (int *) ;
 int scope_deinit (int *) ;
 int scope_init (int *) ;
 scalar_t__ strcmp (int ,char*) ;
 int view_array_init (int *,int) ;

bool load(view_array_t *view_array, rxml_document_t *doc)
{
   bool result;
   scope_t scope;
   int view_count;
   rxml_node_t *root = rxml_root_node(doc);

   if (strcmp(root->name, "mamelayout") ||
         strcmp(rxml_node_attrib(root, "version"), "2"))
   {
      RARCH_LOG("video_layout: invalid MAME Layout file\n");
      return 0;
   }

   result = 0;

   scope_init(&scope);
   init_device_params(&scope);
   init_screen_params(&scope, 0);
   init_screen_params(&scope, 1);

   if (!load_top_level(&scope, &view_count, root))
      result = 0;

   view_array_init(view_array, view_count);

   if (!load_views(&scope, view_array, root))
      result = 0;

   scope_deinit(&scope);

   return result;
}
