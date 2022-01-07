
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct config_include_list {struct config_include_list* next; int path; } ;
typedef int real_path ;
struct TYPE_6__ {scalar_t__ include_depth; int path; struct config_include_list* includes; } ;
typedef TYPE_1__ config_file_t ;
typedef int config_file_cb_t ;


 int PATH_MAX_LENGTH ;
 int add_child_list (TYPE_1__*,TYPE_1__*) ;
 int config_file_free (TYPE_1__*) ;
 scalar_t__ config_file_new_internal (char*,scalar_t__,int *) ;
 int fill_pathname_resolve_relative (char*,int ,char*,int) ;
 char* getenv (char*) ;
 scalar_t__ malloc (int) ;
 int strdup (char*) ;
 int string_is_empty (int ) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static void add_sub_conf(config_file_t *conf, char *path, config_file_cb_t *cb)
{
   char real_path[PATH_MAX_LENGTH];
   config_file_t *sub_conf = ((void*)0);
   struct config_include_list *head = conf->includes;
   struct config_include_list *node = (struct config_include_list*)
      malloc(sizeof(*node));

   if (node)
   {
      node->next = ((void*)0);

      node->path = strdup(path);

      if (head)
      {
         while (head->next)
            head = head->next;

         head->next = node;
      }
      else
         conf->includes = node;
   }

   real_path[0] = '\0';







   if (*path == '~')
   {
      const char *home = getenv("HOME");
      strlcpy(real_path, home ? home : "", sizeof(real_path));
      strlcat(real_path, path + 1, sizeof(real_path));
   }
   else

      if (!string_is_empty(conf->path))
         fill_pathname_resolve_relative(real_path, conf->path,
               path, sizeof(real_path));


   sub_conf = (config_file_t*)
      config_file_new_internal(real_path, conf->include_depth + 1, cb);
   if (!sub_conf)
      return;


   add_child_list(conf, sub_conf);
   config_file_free(sub_conf);
}
