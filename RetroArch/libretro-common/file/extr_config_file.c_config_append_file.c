
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * entries; TYPE_1__* tail; } ;
typedef TYPE_2__ config_file_t ;
struct TYPE_6__ {int * next; } ;


 int config_file_free (TYPE_2__*) ;
 TYPE_2__* config_file_new_from_path_to_string (char const*) ;

bool config_append_file(config_file_t *conf, const char *path)
{
   config_file_t *new_conf = config_file_new_from_path_to_string(path);
   if (!new_conf)
      return 0;

   if (new_conf->tail)
   {
      new_conf->tail->next = conf->entries;
      conf->entries = new_conf->entries;
      new_conf->entries = ((void*)0);
   }

   config_file_free(new_conf);
   return 1;
}
