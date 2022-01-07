
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {int guaranteed_no_duplicates; scalar_t__ include_depth; int * includes; int * last; int * tail; int * entries; int * path; } ;
typedef struct config_file config_file_t ;


 scalar_t__ malloc (int) ;

config_file_t *config_file_new_alloc(void)
{
   struct config_file *conf = (struct config_file*)malloc(sizeof(*conf));
   if (!conf)
      return ((void*)0);

   conf->path = ((void*)0);
   conf->entries = ((void*)0);
   conf->tail = ((void*)0);
   conf->last = ((void*)0);
   conf->includes = ((void*)0);
   conf->include_depth = 0;
   conf->guaranteed_no_duplicates = 0 ;

   return conf;
}
