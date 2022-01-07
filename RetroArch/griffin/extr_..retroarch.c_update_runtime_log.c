
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int runtime_log_t ;


 int free (int *) ;
 int libretro_core_runtime_usec ;
 int runtime_content_path ;
 int runtime_core_path ;
 int runtime_log_add_runtime_usec (int *,int ) ;
 int * runtime_log_init (int ,int ,int) ;
 int runtime_log_save (int *) ;
 int runtime_log_set_last_played_now (int *) ;

__attribute__((used)) static void update_runtime_log(bool log_per_core)
{

   runtime_log_t *runtime_log = runtime_log_init(
         runtime_content_path, runtime_core_path, log_per_core);

   if (!runtime_log)
      return;


   runtime_log_add_runtime_usec(runtime_log, libretro_core_runtime_usec);


   runtime_log_set_last_played_now(runtime_log);


   runtime_log_save(runtime_log);


   free(runtime_log);
}
