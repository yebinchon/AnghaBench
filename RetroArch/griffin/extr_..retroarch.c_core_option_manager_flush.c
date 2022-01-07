
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct core_option {int key; } ;
struct TYPE_9__ {size_t size; TYPE_3__* opts; } ;
typedef TYPE_4__ core_option_manager_t ;
typedef int config_file_t ;
struct TYPE_8__ {size_t index; TYPE_2__* vals; } ;
struct TYPE_7__ {TYPE_1__* elems; } ;
struct TYPE_6__ {int data; } ;


 int config_set_string (int *,int ,int ) ;

__attribute__((used)) static void core_option_manager_flush(
      config_file_t *conf,
      core_option_manager_t *opt,
      const char *path)
{
   size_t i;

   for (i = 0; i < opt->size; i++)
   {
      struct core_option *option = (struct core_option*)&opt->opts[i];

      if (option)
         config_set_string(conf, option->key,
               opt->opts[i].vals->elems[opt->opts[i].index].data);
   }
}
